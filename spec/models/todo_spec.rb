require 'spec_helper'

describe Todo do 
  it { should validate_presence_of :title}

  it 'marks the task as incomplete when created' do 
    todo = FactoryGirl.create(:todo, :is_completed => nil)
    todo.is_completed.should eq false
  end

  it 'sets the priority to 5 on create' do 
    todo = FactoryGirl.create(:todo, :priority => nil)
    todo.priority.should eq 5
  end
end

