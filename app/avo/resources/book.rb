class Avo::Resources::Book < Avo::BaseResource
  # TODO: Define buttons available. Lincese Advanced only (Paid feature)
  self.show_controls = -> do
  end  
  self.edit_controls = -> do
  end  
  self.index_controls = -> do
  end  
  self.row_controls = -> do
  end

  self.includes = []
  self.search = {
    query: -> { 
      query.ransack(
        id_eq: params[:q], 
        title_cont: params[:q], 
        description_cont: params[:q], 
        releaseDate_cont: params[:q], 
        m: "or"
      ).result(distinct: false) 
    },
    help: -> { "- search by title, description and released date." }
  }

  # DOC: Define index page as grid as default
  self.default_view_type = :grid
  self.grid_view = {
    card: -> do
      {
        cover_url:
          if record.cover
            main_app.url_for(record.cover)
          end,
        title: record.title,
        body: record.description.truncate(60)
      }
    end
  }

  def filters
    filter Avo::Filters::Favorite
  end  

  def fields
    field :id, as: :id
    field :number, as: :number
    field :pages, as: :number
    field :index, as: :number
    field :title, as: :text
    field :originalTitle, as: :text
    field :releaseDate, as: :text
    field :description, as: :textarea
    field :cover, as: :text
    field :favorite, as: :boolean
  end

end
