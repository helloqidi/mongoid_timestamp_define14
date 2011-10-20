# encoding: utf-8
require "mongoid/timestamps/created_on"
require "mongoid/timestamps/updated"
require "mongoid/timestamps/timeless"
require "mongoid/timestamps/created_on"
require "mongoid/timestamps/updated_on"


module Mongoid #:nodoc:

  # This module handles the behaviour for setting up document created at and
  # updated at timestamps.
  module Timestamps
    extend ActiveSupport::Concern
    include Created
    include Updated   
    include CreatedOn
    include UpdatedOn
  end
end
