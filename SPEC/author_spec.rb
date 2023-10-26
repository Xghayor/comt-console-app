require_relative 'helper'
require 'yaml'

describe Author do
  before :each do
    @author = Author.new 'Joanne', 'Rowling'
  end

  it '@author should be an instance of Author class' do
    expect(@author).to be_an_instance_of Author
  end

  it 'author first name to be "Joanne"' do
    @first_name == 'Joanne '
  end

  it 'author last name to be "Rowling"' do
    @last_name == 'Rowling'
  end
end
