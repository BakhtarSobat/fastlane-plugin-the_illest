describe Fastlane::Actions::TheIllestAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The the_illest plugin is working!")

      Fastlane::Actions::TheIllestAction.run(nil)
    end
  end
end
