require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib', 'scale')

describe Scale do
  context "initialization" do
    subject { Scale.new('Bbmaj') }

    its(:name)     { should eql 'Bbmaj' }
    its(:key)      { should eql 'Bb' }
    its(:interval) { should eql 'maj' }
  end
  context "Minor Scales" do
    it "can create a Abmin scale" do
      expect(Scale.new('Abmin').notes).to eql(['Ab', 'B', 'Eb'])
    end
    it "can create a Amin scale" do
      expect(Scale.new('Amin').notes).to eql(['A', 'C', 'E'])
    end
    it "can create a A#min scale" do
      expect(Scale.new('A#min').notes).to eql(['A#', 'C#', 'F'])
    end

    it "can create a Bbmin scale" do
      expect(Scale.new('Bbmin').notes).to eql(['Bb', 'Db', 'F'])
    end
    it "can create a Bmin scale" do
      expect(Scale.new('Bmin').notes).to eql(['B', 'D', 'F#'])
    end
    it "can create a B#min scale" do
      expect(Scale.new('B#min').notes).to eql(['B#', 'D#', 'G'])
    end

    it "can create a Cbmin scale" do
      expect(Scale.new('Cbmin').notes).to eql(['Cb', 'D', 'Gb'])
    end
    it "can create a Cmin scale" do
      expect(Scale.new('Cmin').notes).to eql(['C', 'D#', 'G'])
    end
    it "can create a C#min scale" do
      expect(Scale.new('C#min').notes).to eql(['C#', 'E', 'G#'])
    end

    it "can create a Dbmin scale" do
      expect(Scale.new('Dbmin').notes).to eql(['Db', 'E', 'Ab'])
    end
    it "can create a Dmin scale" do
      expect(Scale.new('Dmin').notes).to eql(['D', 'F', 'A'])
    end
    it "can create a D#min scale" do
      expect(Scale.new('D#min').notes).to eql(['D#', 'F#', 'A#'])
    end

    it "can create a Ebmin scale" do
      expect(Scale.new('Ebmin').notes).to eql(['Eb', 'Gb', 'Bb'])
    end
    it "can create a Emin scale" do
      expect(Scale.new('Emin').notes).to eql(['E', 'G', 'B'])
    end
    it "can create a E#min scale" do
      expect(Scale.new('E#min').notes).to eql(['E#', 'G#', 'C'])
    end

    it "can create a Fbmin scale" do
      expect(Scale.new('Fbmin').notes).to eql(['Fb', 'G', 'B'])
    end
    it "can create a Fmin scale" do
      expect(Scale.new('Fmin').notes).to eql(['F', 'G#', 'C'])
    end
    it "can create a F#min scale" do
      expect(Scale.new('F#min').notes).to eql(['F#', 'A', 'C#'])
    end

    it "can create a Gbmin scale" do
      expect(Scale.new('Gbmin').notes).to eql(['Gb', 'A', 'Db'])
    end
    it "can create a Gmin scale" do
      expect(Scale.new('Gmin').notes).to eql(['G', 'A#', 'D'])
    end
    it "can create a G#min scale" do
      expect(Scale.new('G#min').notes).to eql(['G#', 'B', 'D#'])
    end
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
      expect(Scale.new('C#maj').notes).to eql(['C#', 'F', 'G#'])
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
      expect(Scale.new('G#maj').notes).to eql(['G#', 'C', 'D#'])
    end
  end
  context "Diminished Scales" do
    it "can create a Abdim scale" do
      expect(Scale.new('Abdim').notes).to eql(['Ab', 'B', 'D'])
    end
    it "can create a Adim scale" do
      expect(Scale.new('Adim').notes).to eql(['A', 'C', 'D#'])
    end
    it "can create a A#dim scale" do
      expect(Scale.new('A#dim').notes).to eql(['A#', 'C#', 'E'])
    end

    it "can create a Bbdim scale" do
      expect(Scale.new('Bbdim').notes).to eql(['Bb', 'Db', 'E'])
    end
    it "can create a Bdim scale" do
      expect(Scale.new('Bdim').notes).to eql(['B', 'D', 'F'])
    end
    it "can create a B#dim scale" do
      expect(Scale.new('B#dim').notes).to eql(['B#', 'D#', 'F#'])
    end

    it "can create a Cbdim scale" do
      expect(Scale.new('Cbdim').notes).to eql(['Cb', 'D', 'F'])
    end
    it "can create a Cdim scale" do
      expect(Scale.new('Cdim').notes).to eql(['C', 'D#', 'F#'])
    end
    it "can create a C#dim scale" do
      expect(Scale.new('C#dim').notes).to eql(['C#', 'E', 'G'])
    end

    it "can create a Dbdim scale" do
      expect(Scale.new('Dbdim').notes).to eql(['Db', 'E', 'G'])
    end
    it "can create a Ddim scale" do
      expect(Scale.new('Ddim').notes).to eql(['D', 'F', 'G#'])
    end
    it "can create a D#dim scale" do
      expect(Scale.new('D#dim').notes).to eql(['D#', 'F#', 'A'])
    end

    it "can create a Ebdim scale" do
      expect(Scale.new('Ebdim').notes).to eql(['Eb', 'Gb', 'A'])
    end
    it "can create a Edim scale" do
      expect(Scale.new('Edim').notes).to eql(['E', 'G', 'A#'])
    end
    it "can create a E#dim scale" do
      expect(Scale.new('E#dim').notes).to eql(['E#', 'G#', 'B'])
    end

    it "can create a Fbdim scale" do
      expect(Scale.new('Fbdim').notes).to eql(['Fb', 'G', 'Bb'])
    end
    it "can create a Fdim scale" do
      expect(Scale.new('Fdim').notes).to eql(['F', 'G#', 'B'])
    end
    it "can create a F#dim scale" do
      expect(Scale.new('F#dim').notes).to eql(['F#', 'A', 'C'])
    end

    it "can create a Gbdim scale" do
      expect(Scale.new('Gbdim').notes).to eql(['Gb', 'A', 'C'])
    end
    it "can create a Gdim scale" do
      expect(Scale.new('Gdim').notes).to eql(['G', 'A#', 'C#'])
    end
    it "can create a G#dim scale" do
      expect(Scale.new('G#dim').notes).to eql(['G#', 'B', 'D'])
    end
  end
  context "Augmented Scales" do
    it "can create a Abaug scale" do
      expect(Scale.new('Abaug').notes).to eql(['Ab', 'C', 'E'])
    end
    it "can create a Aaug scale" do
      expect(Scale.new('Aaug').notes).to eql(['A', 'C#', 'E#'])
    end
    it "can create a A#aug scale" do
      expect(Scale.new('A#aug').notes).to eql(['A#', 'D', 'F#'])
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
      expect(Scale.new('C#maj').notes).to eql(['C#', 'F', 'G#'])
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
      expect(Scale.new('G#maj').notes).to eql(['G#', 'C', 'D#'])
    end
  end
end
