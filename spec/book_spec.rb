require_relative '../lib/book'

describe Book do
  before(:all) do
    @book1 = Book.new('good', 'Glorious Printers', '2022-02-05')
  end

  describe '#book' do
    it 'be an instance of class Book' do
      expect(@book1).to be_an_instance_of Book
    end

    it 'return the cover_state for the book' do
      expect(@book1.cover_state).to eql 'good'
    end

    it 'return the publisher of the book' do
      expect(@book1.publisher).to eql 'Glorious Printers'
    end

    it 'return the color for the label' do
      expect(@book1.publish_date).to eql '2022-02-05'
    end
  end

  context 'return correct value for can_be_archived?' do
    it 'return false' do
      expect(@book1.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be(false)
    end

    it 'return true' do
      book2 = Book.new('bad', 'Education Publisher', '1991-03-03')
      expect(book2.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be(true)
    end
  end
end
