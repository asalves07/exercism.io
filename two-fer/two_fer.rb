class TwoFer
  def self.two_fer(name = 'you')
    `One for %s, one for you' % name
  end
end
