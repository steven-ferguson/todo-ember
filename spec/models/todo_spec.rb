require 'spec_helper'

describe Todo do 
  it { should validate_presence_of :title}

  it 'marks the task as incomplete when created' do 
    todo = FactoryGirl.build(:todo)
    todo.save
    todo.isCompleted.should eq false
  end
end

