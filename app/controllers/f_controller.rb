class FController < EssayBaseController
  def score_card
    @round_payment = 25
    @total_payment = @round.to_i * 25
    render file: 'essays/score_card.html.haml', layout: false
    @name = "3"
  end
end
