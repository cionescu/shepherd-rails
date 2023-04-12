module ShepherdRails
  class TourStatusesController < ShepherdRails.configuration.base_controller.constantize
    def create
      tour_name = params.require(:tour)
      context = params.to_unsafe_h[:context].to_h.with_indifferent_access
      case params.require(:event)
      when 'complete'
        ShepherdRails.configuration.on_tour_complete.call(context, tour_name)
      end

      head :ok
    end
  end
end
