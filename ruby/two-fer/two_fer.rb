class TwoFer
  def self.two_fer(name = 'you')
    # using String#% with named placeholders
    'One for %<name>s, one for me.' % {name: name}
  end
end