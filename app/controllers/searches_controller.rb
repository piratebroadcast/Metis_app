class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @results = PgSearch.multisearch(@query)
  end
end

