module Api
  module V1
    class GeoLocationsController < ApplicationController
      def index
        geo_locations = GeoLocation.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded geo_locations', data: geo_locations }
      end

      def create
        geo_location = GeoLocation.new(geo_location_params)
        if geo_location.save
          render json: { status: 'SUCCESS', data: geo_location}
        else
          render json: { status: 'ERROR', data: geo_location.errors }
        end
      end

      def geo_location_params
        params.require(:geo_location).permit(:latitude, :longitude)
      end
    end
  end
end
