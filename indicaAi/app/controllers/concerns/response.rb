# This module provides methods to facilitate json response
module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def response_success(type, message, data=nil, status = :ok)
    render json: {
      status: type, message: message,
      data: data
    }, status: status
  end

  def response_error(type, message, status = :unprocessable_entity)
    render json: {
      status: type, message: message
    }, status: status
  end
end
