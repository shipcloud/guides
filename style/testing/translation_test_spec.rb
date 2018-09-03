# Imagine a class with an 'error_message' method like this:

class SomeClass
  def error_message
    I18n.t("errors.example_message")
  end
end

# RSpec Test:

describe SomeClass do
  describe "#error_message" do
    it "returns a translated message" do

      # GOOD
      expect(subject.error_message).to eq "Translated error message"

      # BAD
      expect(subject.error_message).to eq I18n.t("errors.example_message")
    end
  end
end
