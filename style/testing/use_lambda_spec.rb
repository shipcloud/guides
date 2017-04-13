# Not recommended, execution and expectation are on one line
it "does not use lambda" do
  user_params = attributes_for(:user)

  expect { post :create, user_params }.to change(User, :count).by(1)
end

# Recommended, clear separation of test phases
it "does use lambda" do
  user_params = attributes_for(:user)

  create_request = -> { post :create, user_params }

  expect(create_request).to change(User, :count).by(1)
end
