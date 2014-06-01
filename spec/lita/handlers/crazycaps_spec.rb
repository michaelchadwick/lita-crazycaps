require "spec_helper"

describe Lita::Handlers::Crazycaps, lita_handler: true do
  it { routes_command("crazycaps phrase").to(:crazycaps) }
  
  describe "#crazycaps" do
    it "responds with crazycapped PHRASE" do
      send_command("crazycaps hello")
      expect(replies.last.downcase).to eq("hello")
    end
  end
end
