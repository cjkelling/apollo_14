require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    xit { should have_many :missions}
  end

  describe 'methods' do
    it "gives average age of astronauts" do
      tom = Astronaut.create(name: "tom", age: '25', job: 'astronaut')
      bob = Astronaut.create(name: "bob", age: '22', job: 'astronaut')
      steve = Astronaut.create(name: "steve", age: '34', job: 'astronaut')

      expect(Astronaut.average_age).to eq(27)
    end
  end
end
