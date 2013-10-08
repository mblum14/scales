class Note

  attr_accessor :key

  KEYS = %W(Ab A Bb B C Db D Eb E F Gb G Ab)

  def self.starting_at(key)
    Note.new(key.to_s)
  end

  def initialize key
    @key = key
  end

  def step_up half_steps
    half_steps.times { next! }
    self
  end

  def to_s
    key
  end

  def == note
    if note.kind_of?(::Note)
      note.to_flat == note.to_flat
    else
      note.to_flat == note
    end
  end

  def force_sharp!
    @key = self.to_sharp
  end

  def force_flat!
    @key = self.to_flat
  end

  def to_flat
    case key
    when 'A#' then 'Bb'
    when 'B#' then 'C'
    when 'C#' then 'Db'
    when 'D#' then 'Eb'
    when 'E#' then 'F'
    when 'F#' then 'Gb'
    when 'G#' then 'Ab'
    else key
    end
  end

  def to_sharp
    case key
    when 'Ab' then 'G#'
    when 'Bb' then 'A#'
    when 'Cb' then 'B'
    when 'Db' then 'C#'
    when 'Eb' then 'D#'
    when 'Fb' then 'E'
    when 'Gb' then 'F#'
    else key
    end
  end

  private

  def next!
    @key = next_key
  end

  def prev!
    @key = prev_key
  end

  def next_key
    idx_of_next_key = (KEYS.index(normalize_lookup_key) % 12) + 1
    KEYS[idx_of_next_key]
  end

  def prev_key
    idx_of_prev_key = (KEYS.index(normalize_lookup_key) % 12) - 1
    KEYS[idx_of_prev_key]
  end

  def normalize_lookup_key
    case key
    when 'A#' then 'Bb'
    when 'Cb' then 'B'
    when 'B#' then 'C'
    when 'C#' then 'Db'
    when 'D#' then 'Eb'
    when 'Fb' then 'E'
    when 'E#' then 'F'
    when 'F#' then 'Gb'
    when 'G#' then 'Ab'
    else key
    end
  end

end
