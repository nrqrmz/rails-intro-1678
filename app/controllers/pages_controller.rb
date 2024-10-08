class PagesController < ApplicationController
  def about; end

  def contact
    @members = %w[sofia lucas santiago joana pedro sandra]

    @members = @members.select { |member| member.start_with?(params[:member].downcase) } if params[:member]
  end
end
