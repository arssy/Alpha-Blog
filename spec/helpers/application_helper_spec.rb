# -*- encoding: utf-8 -*-

require 'spec_helper'
require './app/helpers/application_helper'

describe ApplicationHelper do

  # TODO: auto-generated
  describe '#gravatar_for' do
    it 'works' do
      application_helper = ApplicationHelper.new
      user = double('user')
      options = double('options')
      result = application_helper.gravatar_for(user, options)
      expect(result).not_to be_nil
    end
  end

end
