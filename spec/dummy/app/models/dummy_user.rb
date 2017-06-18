class DummyUser < ActiveRecord::Base
  attr_accessor :alchemy_roles, :name

  def self.logged_in
    []
  end

  def self.admins
    [first].compact
  end

  def alchemy_roles
    @alchemy_roles || %w(admin)
  end

  def name
    @name || email
  end

  def has_role?(role)
    alchemy_roles.include?(role)
  end
end
