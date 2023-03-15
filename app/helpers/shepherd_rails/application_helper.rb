# frozen_string_literal: true

module ShepherdRails
  module ApplicationHelper
    def shepherd_tour tour:
      tag.div nil, data: {
        controller: 'shepherd-rails',
        'shepherd-rails-tour-name-value' => tour,
        'shepherd-rails-endpoint-value' => shepherd_rails.tour_statuses_path,
        'shepherd-rails-config-value' => I18n.t(tour, scope: 'shepherd_rails')
      }
    end
  end
end
