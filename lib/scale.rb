class Scale

  attr_accessor :name, :interval
  def initialize scale_name
    @notes = []
    @name, beginning_note, @interval = identify_parts(scale_name)
  end

  def notes
    @notes
  end

  private

  def identify_parts scale_name
    /(?<note>[ABCDEFG][b#]?)(?<interval>maj)/.match(scale_name).to_a
  end
end
