require 'pry'
require './lib/fizzbuzz'

# GLOBAL SCOPE

describe 'fizzbuz' do
  FIZZBUZZ = "fizzbuzz"

  let!(:let_something) { puts 'OBJECT CREATED' }

  something_else = 'hi'

  def method_something
    Object.new
  end

  it '' do
    puts something_else
    puts let_something.object_id
  end

end
