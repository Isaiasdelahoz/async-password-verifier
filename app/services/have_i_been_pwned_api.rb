class HaveIBeenPwnedApi
  attr_reader :password

  def initialize(password)
    @password = password
  end

  def call
    response = Pwned::Password.new(password)
    response.pwned?
  end
end