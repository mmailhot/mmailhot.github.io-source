module PortfolioHelper

  def portfolios
    @items.select { |item| item[:kind] == 'portfolio' }
  end

  def sorted_portfolios
    portfolios.sort_by { |p| attribute_to_time(p[:created_at]) }.reverse
  end

  def portfolio_thumb_url(item)
    '/images/portfolio/thumbs/' + item[:thumb_name]
  end

  def portfolio_image_url(item)
    '/images/portfolio/' + item[:image_name]
  end
end

include PortfolioHelper