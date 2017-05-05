require 'data_mapper'
require 'dm-postgres-adapter'

class Student

  include DataMapper::Resource

  property :id, Serial
  property :name, String

end
