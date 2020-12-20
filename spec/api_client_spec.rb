=begin

=end

require 'spec_helper'

describe AuthressSdk::AuthressClient do
  describe '#deserialize' do
    it "handles Array<Integer>" do
      authress_client = AuthressSdk::AuthressClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[12, 34]')
      data = authress_client.deserialize(response, 'Array<Integer>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([12, 34])
    end

    it 'handles Array<Array<Integer>>' do
      authress_client = AuthressSdk::AuthressClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[[12, 34], [56]]')
      data = authress_client.deserialize(response, 'Array<Array<Integer>>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([[12, 34], [56]])
    end

    it 'handles Hash<String, String>' do
      authress_client = AuthressSdk::AuthressClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '{"message": "Hello"}')
      data = authress_client.deserialize(response, 'Hash<String, String>')
      expect(data).to be_instance_of(Hash)
      expect(data).to eq(:message => 'Hello')
    end
  end

  describe "#object_to_hash" do
    it 'ignores nils and includes empty arrays' do
      # uncomment below to test object_to_hash for model
      # authress_client = AuthressSdk::AuthressClient.new
      # _model = AuthressSdk::ModelName.new
      # update the model attribute below
      # _model.id = 1
      # update the expected value (hash) below
      # expected = {id: 1, name: '', tags: []}
      # expect(authress_client.object_to_hash(_model)).to eq(expected)
    end
  end

  describe '#build_collection_param' do
    let(:param) { ['aa', 'bb', 'cc'] }
    let(:authress_client) { AuthressSdk::AuthressClient.new }

    it 'works for csv' do
      expect(authress_client.build_collection_param(param, :csv)).to eq('aa,bb,cc')
    end

    it 'works for ssv' do
      expect(authress_client.build_collection_param(param, :ssv)).to eq('aa bb cc')
    end

    it 'works for tsv' do
      expect(authress_client.build_collection_param(param, :tsv)).to eq("aa\tbb\tcc")
    end

    it 'works for pipes' do
      expect(authress_client.build_collection_param(param, :pipes)).to eq('aa|bb|cc')
    end

    it 'works for multi' do
      expect(authress_client.build_collection_param(param, :multi)).to eq(['aa', 'bb', 'cc'])
    end

    it 'fails for invalid collection format' do
      expect(proc { authress_client.build_collection_param(param, :INVALID) }).to raise_error(RuntimeError, 'unknown collection format: :INVALID')
    end
  end

  describe '#json_mime?' do
    let(:authress_client) { AuthressSdk::AuthressClient.new }

    it 'works' do
      expect(authress_client.json_mime?(nil)).to eq false
      expect(authress_client.json_mime?('')).to eq false

      expect(authress_client.json_mime?('application/json')).to eq true
      expect(authress_client.json_mime?('application/json; charset=UTF8')).to eq true
      expect(authress_client.json_mime?('APPLICATION/JSON')).to eq true

      expect(authress_client.json_mime?('application/xml')).to eq false
      expect(authress_client.json_mime?('text/plain')).to eq false
      expect(authress_client.json_mime?('application/jsonp')).to eq false
    end
  end

  describe '#select_header_accept' do
    let(:authress_client) { AuthressSdk::AuthressClient.new }

    it 'works' do
      expect(authress_client.select_header_accept(nil)).to be_nil
      expect(authress_client.select_header_accept([])).to be_nil

      expect(authress_client.select_header_accept(['application/json'])).to eq('application/json')
      expect(authress_client.select_header_accept(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(authress_client.select_header_accept(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')

      expect(authress_client.select_header_accept(['application/xml'])).to eq('application/xml')
      expect(authress_client.select_header_accept(['text/html', 'application/xml'])).to eq('text/html,application/xml')
    end
  end

  describe '#select_header_content_type' do
    let(:authress_client) { AuthressSdk::AuthressClient.new }

    it 'works' do
      expect(authress_client.select_header_content_type(nil)).to eq('application/json')
      expect(authress_client.select_header_content_type([])).to eq('application/json')

      expect(authress_client.select_header_content_type(['application/json'])).to eq('application/json')
      expect(authress_client.select_header_content_type(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(authress_client.select_header_content_type(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')
      expect(authress_client.select_header_content_type(['application/xml'])).to eq('application/xml')
      expect(authress_client.select_header_content_type(['text/plain', 'application/xml'])).to eq('text/plain')
    end
  end

  describe '#sanitize_filename' do
    let(:authress_client) { AuthressSdk::AuthressClient.new }

    it 'works' do
      expect(authress_client.sanitize_filename('sun')).to eq('sun')
      expect(authress_client.sanitize_filename('sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('../sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('/var/tmp/sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('./sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('..\sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('\var\tmp\sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('c:\var\tmp\sun.gif')).to eq('sun.gif')
      expect(authress_client.sanitize_filename('.\sun.gif')).to eq('sun.gif')
    end
  end
end
