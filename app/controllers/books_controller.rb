class BooksController < ApplicationController

# Yo this is loading up a stock page as we needed a landing page, instead of appearing on a user page
# I guess the idea is that we'd have a central landing/index page and then when the user wants to view the books they must sign up

def index
    render :index
end


end


# Note for Danny - this is used to authenticate whether a user has signed in or not. It'll go into which ever pages we need it to go into. It's for me to remember to include it once the CRUD is done.
# authenticate_user!