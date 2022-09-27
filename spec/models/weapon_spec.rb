require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "is valid if the level is between 1 and 99" do
    expect(Weapon.create(name: "Faquinha", description: "Faca", power_base: 200, power_step: 150, level:14 )).to be_valid
  end
  it "is invalid if power_base is negative" do
    expect(Weapon.create(name: "Faquinha", description: "Faca", power_base: -20, power_step: 150, level:14 )).to_not be_valid
  end
  it "it returns the correct weapon title" do
    weapon = Weapon.create(name: "Faquinha", description: "Faca", power_base: 200, power_step: 150, level:14 )
    expect(weapon.title).to eq ("Faquinha #14")
  end
end
