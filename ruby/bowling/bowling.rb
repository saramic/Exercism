class Game
  attr_accessor :score

  def initialize
    @score = 0
    @frames = []
  end

  def roll(pins)
    status = :roll
    # status = :spare if !@frames.empty? && @frames.last[:pins] + pins == 10
    # pins = pins * 2 if !@frames.empty? && @frames.last[:status] == :spare
    pp @frames
    if @frames.last
      if @frames.last[:throws].length < 3
        case @frames.last[:status]
        when :strike
          @score += pins * 2
          @frames.last[:throws] << (pins * 2)
        when :spare
          @score += pins * 2
          @frames.last[:throws] << (pins * 2)
          @frames.last[:status] = :spare if @frames.last[:throws].sum == 10
        when :roll
          @score += pins
          @frames.last[:throws] << pins
          @frames.last[:status] = :spare if @frames.last[:throws].sum == 10
        else
          raise StandardError
        end
      else
        @score += pins
        status = :strike if pins == 10
        @frames << {
          status: status,
          throws: [pins]
        }
      end
    else
      @score += pins
      status = :strike if pins == 10
      @frames << {
        status: status,
        throws: [pins]
      }
    end
    # @score += pins
    # @state = {@frame.length => 10} if @pins == 10
    # if @frames.length % 3 == 0 &&
    #   @frames[@frames.length - 3] + @frames[@frames.length - 2] == 10 &&
    #   @frames[@frames.length - 2] > 0
    #   @score += @frames[@frames.length - 1] unless @frames.length == 21
    # end
  end
end