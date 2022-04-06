require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { create(:event) }
  describe 'validate user_id' do
    it 'when present is valid' do
      event.user_id = 1
      expect(event).to be_valid
    end

    it 'when nil is invalid' do
      event.user_id = nil
      expect(event).to be_invalid
    end
  end

  describe 'validate title' do
    it 'when present is valid' do
      event.title = 'MyString'
      expect(event).to be_valid
    end

    it 'when blank is invalid' do
      event.title = '  '
      expect(event).to be_invalid
    end

    it 'when empty is invalid' do
      event.title = ''
      expect(event).to be_invalid
    end

    it 'when nil is invalid' do
      event.title = nil
      expect(event).to be_invalid
    end
  end

  describe 'validate description' do
    it 'when present is valid' do
      event.description = 'MyText'
      expect(event).to be_valid
    end

    it 'when blank is invalid' do
      event.description = '  '
      expect(event).to be_invalid
    end

    it 'when empty is invalid' do
      event.description = ''
      expect(event).to be_invalid
    end

    it 'when nil is invalid' do
      event.description = nil
      expect(event).to be_invalid
    end
  end

  describe 'validate start_date' do
    it 'when present is valid' do
      event.start_date = '2022-04-05 06:55:40'
      expect(event).to be_valid
    end

    it 'when blank is invalid' do
      event.start_date = '  '
      expect(event).to be_invalid
    end
  end

  describe 'validate end_date' do
    it 'when present is valid' do
      event.end_date = '2022-04-05 06:55:40'
      expect(event).to be_valid
    end

    it 'when blank is invalid' do
      event.end_date = '  '
      expect(event).to be_invalid
    end
  end
end
