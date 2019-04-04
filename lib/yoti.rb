require_relative 'yoti/version'
require_relative 'yoti/configuration'
require_relative 'yoti/errors'
require_relative 'yoti/ssl'

require_relative 'yoti/http/payloads/aml_address'
require_relative 'yoti/http/payloads/aml_profile'
require_relative 'yoti/http/aml_check_request'

require_relative 'yoti/http/signed_request'
require_relative 'yoti/http/profile_request'
require_relative 'yoti/http/request'

require_relative 'yoti/data_type/anchor'
require_relative 'yoti/data_type/profile'
require_relative 'yoti/data_type/attribute'
require_relative 'yoti/data_type/signed_time_stamp'
require_relative 'yoti/data_type/image'
require_relative 'yoti/data_type/image_jpeg'
require_relative 'yoti/data_type/image_png'
require_relative 'yoti/data_type/multi_value'

require_relative 'yoti/util/age_processor'
require_relative 'yoti/util/anchor_processor'
require_relative 'yoti/util/log.rb'

require_relative 'yoti/activity_details'
require_relative 'yoti/client'

require_relative 'yoti/protobuf/main'

# The main module namespace of the Yoti gem
module Yoti
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
    configuration.validate
  end
end
