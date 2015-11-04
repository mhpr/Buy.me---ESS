require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Review salva na data" do
    review = Review.new
    assert review.save, "Review nao salva"
    assert_equal DateTime.now.to_date, Review.find_by_id(review.id).sent_on.to_date, "Nao salva na data certa"
  end
   
  test "Ligado a compra" do
    review = Review.new
    review.conteudo = "Nao gostei. 5 estrelas"
    compra = Compra.new
    compra.save
    review.compra_id = compra.id 
    review.save
    
    assert_equal "Nao gostei. 5 estrelas", Review.find_by_compra_id(compra.id).conteudo, "Nao retornou review"
  end
end