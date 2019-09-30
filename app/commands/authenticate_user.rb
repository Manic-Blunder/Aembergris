class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    if auth&.id
      JsonWebToken.encode(user_id: User.find_by_email(email).id)
    end
  end

  private

  attr_accessor :email, :password

  def auth
    user = User.find_by_email(email)
    return user if user&.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end

end