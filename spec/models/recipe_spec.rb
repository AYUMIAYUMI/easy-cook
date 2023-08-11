require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
    @recipe = FactoryBot.build(:recipe)
  end

  describe 'レシピ作成' do
    context 'レシピ作成できる場合' do
      it 'image,dish,persons,material,amount,make_one,make_twoが存在すれば登録できる' do
      end
    end

    context 'レシピが作成できない場合' do
      it 'imageが空だと出品できない' do
        @recipe.image = nil
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Image can't be blank")
      end

      it 'dishが空では登録できない' do
        @recipe.dish = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Dish can't be blank")
      end

      it 'personsが空では登録できない' do
        @recipe.persons = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Persons can't be blank")
      end

      it 'materialが空では登録できない' do
        @recipe.material = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Material can't be blank")
      end

      it 'amountが空では登録できない' do
        @recipe.amount = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Amount can't be blank")
      end

      it 'make_oneが空では登録できない' do
        @recipe.make_one = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Make one can't be blank")
      end

      it 'make_twoが空では登録できない' do
        @recipe.make_two = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Make two can't be blank")
      end
    end
  end
end
