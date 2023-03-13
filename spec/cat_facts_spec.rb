require "cat_facts"
require 'json'
require 'net/http'

RSpec.describe CatFacts do
    it "provides a cat fact" do
        requester_dbl = double :fake_requester
        allow(requester_dbl)
            .to receive(:get)
            .with(URI("https://catfact.ninja/fact"))
            .and_return('{"fact": "On average, a cat will sleep for 16 hours a day.", "length": 48}')
        cat_facts = CatFacts.new(requester_dbl)
        expect(cat_facts.provide).to eq "Cat fact: On average, a cat will sleep for 16 hours a day."
    end
end