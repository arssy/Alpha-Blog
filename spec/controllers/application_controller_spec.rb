# -*- encoding: utf-8 -*-

require 'spec_helper'
require './app/controllers/application_controller'

describe ApplicationController do

  # TODO: auto-generated
  describe '#current_user' do
    it 'works' do
      application_controller = ApplicationController.new
      result = application_controller.current_user
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#logged_in?' do
    it 'works' do
      application_controller = ApplicationController.new
      result = application_controller.logged_in?
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#require_user' do
    it 'works' do
      application_controller = ApplicationController.new
      result = application_controller.require_user
      expect(result).not_to be_nil
    end
  end

end
