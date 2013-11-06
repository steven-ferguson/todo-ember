require 'spec_helper'

describe Todo do 
  it { should validate_presence_of :title}

  it 'marks the task as incomplete when created' do 
    todo = FactoryGirl.create(:todo, :is_completed => nil)
    todo.is_completed.should eq false
  end
end

