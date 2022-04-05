require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user)}
  describe 'validate name' do
    it 'when present is valid' do
      user.name = "test"
      expect(user).to be_valid
    end

    it 'when blank is invalid' do
      user.name = '  '
      expect(user).to be_invalid
    end

    it 'when empty is invalid' do
      user.name = ''
      expect(user).to be_invalid
    end

    it 'when nil is invalid' do
      user.name = nil
      expect(user).to be_invalid
    end

    it 'length should not be too long' do
      user.name = 'a' * 51
      expect(user).to be_invalid
    end
  end

  describe 'validate email' do
    it 'when present is valid' do
      user.email = "test@example.com"
      expect(user).to be_valid
    end

    it 'when blank is invalid' do
      user.email = '  '
      expect(user).to be_invalid
    end

    it 'when empty is invalid' do
      user.email = ''
      expect(user).to be_invalid
    end

    it 'when nil is invalid' do
      user.email = nil
      expect(user).to be_invalid
    end

    it 'length should not be too long' do
      user.email = 'a' * 244 + "@example.com"
      expect(user).to be_invalid
    end

    it 'when correct format is valid' do
      user.email = 'user@example.com'
      expect(user).to be_valid

      user.email = 'USER@foo.COM'
      expect(user).to be_valid

      user.email = 'A_US-ER@foo.bar.org'
      expect(user).to be_valid

      user.email = 'foo.bar@baz.jp'
      expect(user).to be_valid

      user.email = 'foo+bar@baz.cn'
      expect(user).to be_valid
    end

    it 'when is incorrect format is invalid' do
      user.email = 'user@example,com'
      expect(user).to be_invalid

      user.email = 'user_at_foo.org'
      expect(user).to be_invalid

      user.email = 'user.name@example.'
      expect(user).to be_invalid

      user.email = 'foo@bar_baz.com'
      expect(user).to be_invalid

      user.email = 'foo@bar+baz.com'
      expect(user).to be_invalid
    end

    it 'when already taken is invalid' do
      FactoryBot.create(:user, email: 'test@example.com')
      user.email = 'test@example.com'
      expect(user).to be_invalid
      expect(user.errors[:email]).to include('has already been taken')
    end

    it 'when case insensitive and not unipue is invalid' do
      FactoryBot.create(:user, email: 'tony@example.com')
      user.email = 'TONY@EXAMPLE.COM'
      expect(user).to be_invalid
      expect(user.errors[:email]).to include('has already been taken')
    end

    it 'is saved in lowercase' do
      user.email = 'TONY@EXAMPLE.COM'
      user.save!
      expect(user.reload.email).to eq 'tony@example.com'
    end
  end
end
