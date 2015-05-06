module Rollbar
  module MongoidExtension
    extend ActiveSupport::Concern

    def report_validation_errors_to_rollbar
      self.errors.full_messages.each do |error|
        Rollbar.log_info "[Rollbar] Reporting form validation error: #{error} for #{self.to_s}"
        Rollbar.warning("Form Validation Error: #{error} for #{self.to_s}")
      end
    end
  end
end

Mongoid::Document.send(:include, Rollbar::MongoidExtension)
