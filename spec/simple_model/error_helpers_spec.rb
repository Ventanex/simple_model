require 'spec_helper.rb'

class FooErrorClass < SimpleModel::Base
end

describe SimpleModel::ErrorHelpers do
  describe '#errors_for_flash' do
    it "should not raise error" do
      f = FooErrorClass.new
      f.errors.add(:foo, "something not great")
      f.errors.add(:bar, "doh")
      expect {f.errors_for_flash}.to_not raise_error
    end
  end
end
