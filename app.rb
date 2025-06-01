# frozen_string_literal: true

require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path('lib/app', __dir__)
require 'router'
require 'controller'
require 'gossip'
require 'view'

Router.new.perform
