unless defined? Note
  require File.join(File.dirname(__FILE__), 'Note')
end
class Scale

  attr_accessor :name, :key, :interval, :notes

  def initialize scale_name
    @name, @key, @interval = identify_parts(scale_name)
    @notes = []
    compute_notes!
  end

  def notes
    @notes.map(&:to_s)
  end

  def to_s
    notes
  end

  def base_note_is_sharp?
    key[1] == '#' || key[1].nil?
  end

  private

  def compute_notes!
    half_steps = case @interval
                 when 'maj' then [0, 4, 3]
                 when 'min' then [0, 3, 4]
                 else [0]
                 end
    add_notes!(key, half_steps)
    transpose_notes!
  end

  def add_notes! key, steps
    @notes << Note.starting_at(key).step_up(steps.shift)
    add_notes!(@notes.last, steps) unless steps.empty?
  end

  def transpose_notes!
    @notes = @notes.map(&:force_sharp!) if base_note_is_sharp?
  end

  def identify_parts scale_name
    /(?<key>[ABCDEFG][b#]?)(?<interval>maj|min)/.match(scale_name).to_a
  end
end
