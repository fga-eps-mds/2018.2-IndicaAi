# app/controllers/application_controller.rb
class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  require 'net/http'

  protected

  def authenticate_request!
    authenticate = authenticate_params
    if authenticate[:token].nil?
      response_error('ERROR', 'Empty Token', :bad_request)
    else
      response = post_request("#{ENV['LOGIN_API']}/api/token-verify/",
                              token: authenticate[:token])
      unless JSON.parse(response.body)['token'].present?
        response_error('ERROR', 'Authentication Failed', :forbidden)
      end
    end
  end

  def post_request(url, body = {},
                   header = { 'Content-Type' => 'application/json' },
                   ssl = true)

    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = ssl
    uri_request = Net::HTTP::Post.new(uri.path, header)
    uri_request.body = body.to_json
    http.request(uri_request)
  rescue StandardError => exception
    response_error('ERROR', exception, :internal_server_error)
  end

  private

  def authenticate_params
    { token: authorization_token }
  end

  def authorization_token
    @authorization_token ||= if request.headers['Authorization'].present?
                               request.headers['Authorization'].split(' ').last
                             end
  end
end
