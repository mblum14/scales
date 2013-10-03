require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib', 'scale')

describe Scale do
  context "initialization" do
    subject { Scale.new('Cmaj') }

    its(:name) { should eql 'Cmaj' }
    its(:interval) { should eql 'maj' }
  end
  context "Major Scales" do
    it "can create a Cmaj scale" do
      pending
      expect(Scale.new('Cmaj').notes).to eql(['C', 'E', 'G'])
    end
  end
end
