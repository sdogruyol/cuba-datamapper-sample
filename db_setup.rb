require 'data_mapper'

DataMapper.setup(:default, 'postgres://serdar@localhost/cuba')

class User
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :email,      String    # A varchar type string, for short strings
  property :created_at, DateTime  # A DateTime, for any date you might like.
end

DataMapper.finalize
DataMapper.auto_upgrade!
