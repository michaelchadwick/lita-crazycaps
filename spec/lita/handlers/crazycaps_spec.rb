require "spec_helper"

describe Lita::Handlers::Crazycaps, lita_handler: true do
  it { routes_command("cc phrase").to(:crazycaps) }
  it { routes_command("crazycaps phrase").to(:crazycaps) }
  
  describe "#crazycaps" do
    it "responds with crazycapped PHRASE" do
      send_command("cc hello")
      expect(replies.last.downcase).to eq("hello")
    end
  end
end
