module ShepherdRails
  class TourStatusesController < ShepherdRails.configuration.base_controller.constantize
    def create
      tour_name = params.require(:tour)
      case params.require(:event)
      when 'complete'
        ShepherdRails.configuration.on_tour_complete.call(self, tour_name)
      end

      head :ok
    end
  end
end
