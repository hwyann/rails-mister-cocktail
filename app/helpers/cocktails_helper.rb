module CocktailsHelper
  def cocktail_photo(cocktail)
    if cocktail.photo.attached?
      cl_image_path(cocktail.photo.key)
    else
      ['https://cf.ltkcdn.net/cocktails/images/orig/259354-2121x1414-whiskey-sour.jpg', 'https://cf.ltkcdn.net/cocktails/images/orig/252120-2121x1414-sazerac.jpg', 'https://cf.ltkcdn.net/cocktails/images/orig/252116-2121x1414-whiskey-sour.jpg'].sample
    end
  end
end
