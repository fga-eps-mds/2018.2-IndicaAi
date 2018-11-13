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
    elsif verify_token authenticate[:token]
      @current_user = UserIdentifier.get_by_identifier(
        authenticate[:user_identifier]
      )
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

  def verify_token(token)
    response = post_request("#{ENV['LOGIN_API']}/api/token-verify/",
                            token: token)
    response_error('ERROR', 'Authentication Failed', :forbidden) unless
      JSON.parse(response.body)['token'].present?
  end

  private

  def authenticate_params
    {
      token: authorization_token,
      user_identifier: params[:user_identifier]
    }
  end

  def authorization_token
    @authorization_token ||= if request.headers['Authorization'].present?
                               request.headers['Authorization'].split(' ').last
                             end
  end
end
