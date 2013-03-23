require 'launchy'

class Got
  def self.play
    song = File.expand_path('../got.mp3', __FILE__)
    logo = File.expand_path('../got.txt', __FILE__)
    os = Launchy::Application.new.host_os_family.host_os
    puts "YOU SHOULD HAVE TYPED GIT. When you're done feeling ashamed, CTRL-C to quit." 
    puts
    File.open(logo).each_line { |line| puts line }
    case os
    when /windows/
      `start #{ song }`
    when /darwin/
      `afplay #{ song }`
    when /nix/
      `aplay #{ song }`
    when /cygwin/
      `cygstart #{ song }`
    end
  end
end
