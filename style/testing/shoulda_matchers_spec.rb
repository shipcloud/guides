describe User do
  # Not recommended
  it "is invalid with a negative height" do
    expect(build(:user, height: -1)).not_to be_valid
  end

  # Recommended
  it { is_expected.to validate_numericality_of(:max_length).is_greater_than(0) }
end
