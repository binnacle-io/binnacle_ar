module BinnacleAr
  module Hooks
    extend ActiveSupport::Concern

    module ClassMethods
      def binnacle_signal(options = {})
        options[:on] ||= [:create, :update, :destroy]

        options_on = Array(options[:on])

        after_create  :record_create if options_on.include?(:create)
        after_update  :record_update if options_on.include?(:update)
        after_destroy :record_destroy if options_on.include?(:destroy)

        after_initialize do
          @binnacle_client = Binnacle::Client.new(ENV['BINNACLE_API_KEY'], ENV['BINNACLE_API_SECRET'])
        end

        include BinnacleAr::Hooks::InstanceMethods
      end
    end

    module InstanceMethods

      private

      def record_create
        signal 'create'
      end

      def record_update
        signal 'update'
      end

      def record_destroy
        signal 'destroy'
      end

      def signal(method)
        @binnacle_client.signal_asynch(ENV['BINNACLE_AR_CTX'], method,
                                                   self.class.to_s.underscore,
                                                   nil,
                                                   'INFO',
                                                   [],
                                                   self.to_json)
      end
    end
  end
end

ActiveRecord::Base.send :include, BinnacleAr::Hooks
