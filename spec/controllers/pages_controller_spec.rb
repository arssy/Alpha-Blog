# -*- encoding: utf-8 -*-

require 'spec_helper'
require './app/controllers/pages_controller'

describe PagesController do

  # TODO: auto-generated
  describe '#index' do
    it 'works' do
      pages_controller = PagesController.new
      result = pages_controller.index
      expect(result).not_to be_nil
    end
  end

end
