json.extract! movie, :id, :title, :poster, :trailer, :rating, :released_on, :genre_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
