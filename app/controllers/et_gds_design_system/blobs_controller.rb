module EtGdsDesignSystem
  class BlobsController < ::ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      service = Api::BlobService.new
      response = service.call(request.body.read, headers: request.headers)
      respond_to do |format|
        if response.success?
          format.json { render json: service.response_data }
        else
          format.json { render json: service.response_data, status: response.code }
        end
      end
    end
  end
end
