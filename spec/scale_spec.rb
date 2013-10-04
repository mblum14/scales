require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib', 'scale')

describe Scale do
  context "initialization" do
    subject { Scale.new('Bbmaj') }

    its(:name)     { should eql 'Bbmaj' }
    its(:key)      { should eql 'Bb' }
    its(:interval) { should eql 'maj' }
  end
  context "Major Scales" do
    it "can create a Abmaj scale" do
      expect(Scale.new('Abmaj').notes).to eql(['Ab', 'C', 'Eb'])
    end
    it "can create a Amaj scale" do
      expect(Scale.new('Amaj').notes).to eql(['A', 'C#', 'E'])
    end
    it "can create a A#maj scale" do
      expect(Scale.new('A#maj').notes).to eql(['A#', 'D', 'F'])
    end

    it "can create a Bbmaj scale" do
      expect(Scale.new('Bbmaj').notes).to eql(['Bb', 'D', 'F'])
    end
    it "can create a Bmaj scale" do
      expect(Scale.new('Bmaj').notes).to eql(['B', 'D#', 'F#'])
    end
    it "can create a B#maj scale" do
      expect(Scale.new('B#maj').notes).to eql(['B#', 'E', 'G'])
    end

    it "can create a Cbmaj scale" do
      expect(Scale.new('Cbmaj').notes).to eql(['Cb', 'Eb', 'Gb'])
    end
    it "can create a Cmaj scale" do
      expect(Scale.new('Cmaj').notes).to eql(['C', 'E', 'G'])
    end
    it "can create a C#maj scale" do
      expect(Scale.new('C#maj').notes).to eql(['C#', 'E#', 'G#'])
    end

    it "can create a Dbmaj scale" do
      expect(Scale.new('Dbmaj').notes).to eql(['Db', 'F', 'Ab'])
    end
    it "can create a Dmaj scale" do
      expect(Scale.new('Dmaj').notes).to eql(['D', 'F#', 'A'])
    end
    it "can create a D#maj scale" do
      expect(Scale.new('D#maj').notes).to eql(['D#', 'G', 'A#'])
    end

    it "can create a Ebmaj scale" do
      expect(Scale.new('Ebmaj').notes).to eql(['Eb', 'G', 'Bb'])
    end
    it "can create a Emaj scale" do
      expect(Scale.new('Emaj').notes).to eql(['E', 'G#', 'B'])
    end
    it "can create a E#maj scale" do
      expect(Scale.new('E#maj').notes).to eql(['E#', 'A', 'C'])
    end

    it "can create a Fbmaj scale" do
      expect(Scale.new('Fbmaj').notes).to eql(['Fb', 'Ab', 'B'])
    end
    it "can create a Fmaj scale" do
      expect(Scale.new('Fmaj').notes).to eql(['F', 'A', 'C'])
    end
    it "can create a F#maj scale" do
      expect(Scale.new('F#maj').notes).to eql(['F#', 'A#', 'C#'])
    end

    it "can create a Gbmaj scale" do
      expect(Scale.new('Gbmaj').notes).to eql(['Gb', 'Bb', 'Db'])
    end
    it "can create a Gmaj scale" do
      expect(Scale.new('Gmaj').notes).to eql(['G', 'B', 'D'])
    end
    it "can create a G#maj scale" do
      expect(Scale.new('G#maj').notes).to eql(['G#', 'B#', 'D#'])
    end
  end
end
