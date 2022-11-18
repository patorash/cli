# frozen_string_literal: true

RSpec.describe Hanami::CLI::Commands::Gem::Version do
  subject { described_class.new(out: stdout) }
  let(:stdout) { StringIO.new }

  it "prints current Hanami version to stdout" do
    subject.call

    stdout.rewind
    expect(stdout.read.chomp).to eq("v#{Hanami::VERSION}")
  end
end
