require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "is valid if the level is between 1 and 99" do
    expect(Weapon.create(name: "Faquinha", description: "Faca", power_base: 200, power_step: 150, level:14 )).to be_valid
  end
  it "is invalid if current_power is negative"
  it "it returns the correct weapon title"
end
