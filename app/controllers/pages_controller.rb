class PagesController < ApplicationController

  def show
    render params[:id]
  end

  def githubs
    response = HTTParty.get(
      'https://api.github.com/users/berlininja/repos',
      :headers => {
        "User-Agent" => "BerliNinja"
      })
    body = JSON.parse(response.body)
    @repos = body[:repos]
  end
end
