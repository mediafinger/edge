class FilesController < ApplicationController

  def index
    @client = get_client
    redirect_to be_social_path if @client.blank?
  end

  def show
  end

  def update
    @client = get_client

    # The file is a Dropbox::API::File object, so you can call methods on it!
    # @client.search('newdoc.txt').each do |file|
    #   file.copy(file.path + ".old")
    # end
  end

private

    def get_client
      dropbox_auth = Authentication.find_by_provider_and_user_id('dropbox', current_user.id)
      return nil if dropbox_auth.blank?
      Dropbox::API::Client.new(:token  => dropbox_auth.token, :secret => dropbox_auth.secret)
    end

end