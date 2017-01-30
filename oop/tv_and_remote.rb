# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)


class Tv
  attr_reader :power, :volume, :channel
  def initialize(input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
  end
end

class Remote < Tv

  def initialize(input_options)
    super
    @tv = input_options[:tv]
  end

  def toggle_power
    if @power.downcase == "off"
      @power = "on"
    elsif @power.downcase == "on"
      @power = "off"
    end     
  end

  def increment_volume
    @volume += 1
  end

  def decrement_volume
    @volume -= 1
  end

  def set_channel(channel)
    @channel = channel
  end
end


remote = Remote.new(
                    power: "on",
                    volume: 22,
                    channel: 50,
                    tv: "Sony"
                    )

p remote
remote.increment_volume
remote.increment_volume
remote.decrement_volume
remote.set_channel(1)
remote.toggle_power
p remote


