# encoding: utf-8
module Mongoid #:nodoc:
  module Timestamps
    # This module handles the behaviour for setting up document updated at
    # timestamp.
    module UpdatedOn
      extend ActiveSupport::Concern

      included do
        field :updated_on, :type => Time, :versioned => false
        set_callback :save, :before, :set_updated_at
      end

      # Update the updated_at field on the Document to the current time.
      # This is only called on create and on save.
      #
      # @example Set the updated at time.
      #   person.set_updated_at
      def set_updated_at
        self.updated_on = Time.now.utc
      end
    end
  end
end
