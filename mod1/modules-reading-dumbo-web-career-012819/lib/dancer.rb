require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

class Dancer

  extend MetaDancing
  include Dance

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
