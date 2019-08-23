require 'rails_helper'

describe "Astronauts Index Page" do
  before :each do
    @tom = Astronaut.create(name: "tom", age: '25', job: 'astronaut')
    @apollo_13 = Mission.create(name: "Apollo 13", time_in_space: 365)
  end

  it "can list all astronauts" do
    visit '/astronauts'

    expect(page).to have_content(@tom.name)
    expect(page).to have_content(@tom.age)
    expect(page).to have_content(@tom.job)
  end

  it 'can list all space missions in alphabetical order for each astronaut' do
    visit '/astronauts'
  end
end
