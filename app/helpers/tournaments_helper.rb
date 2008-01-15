module TournamentsHelper
  def medal_img(rank)
    case rank
    when 1 then image_tag "medals/medal_gold.gif"
    when 2 then image_tag "medals/medal_silver.gif"
    when 3 then image_tag "medals/medal_copper.gif"
    else ""
    end
  end
end
