class Avo::Filters::Favorite < Avo::Filters::BooleanFilter
  self.name = "Favorites"
  # self.visible = -> do
  #   true
  # end

  def apply(request, query, values)
    return query if values['favorite'] && values['unfavored']

    if values['favorite']
      query = query.where(favorite: true)
    elsif values['unfavored']
      query = query.where(favorite: [false, nil])
    end

    query
  end

  def options
    {
      favorite: "Favorite",
      unfavored: "Unfavored"
    }
  end  
end
