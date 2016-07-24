
# 
# 
# 
class String

  # 
  # 
  def to_bool
    return true if self =~ (/^(true|t|yes|y|1)$/i)
    return false if self.empty? || self =~ (/^(false|f|no|n|0)$/i)

    raise ArgumentError.new "invalid value: #{self}"
  end


  # 
  # Colorization
  # 
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  # text
  def black;    colorize(30) end
  def red;      colorize(31) end
  def green;    colorize(32) end
  def yellow;   colorize(33) end
  def blue;     colorize(34) end
  def magenta;  colorize(35) end
  def cyan;     colorize(36) end
  def gray;     colorize(37) end

  # bg
  def bg_black;   colorize(40) end
  def bg_red;     colorize(41) end
  def bg_green;   colorize(42) end
  def bg_yellow;  colorize(43) end
  def bg_blue;    colorize(44) end
  def bg_magenta; colorize(45) end
  def bg_cyan;    colorize(46) end
  def bg_gray;    colorize(47) end

  # extra
  def bold;           colorize(1) end
  def reverse_color;  colorize(7) end



end