# cat hello_world.rb
require "cuba"
require "json"
require './db_setup'

Cuba.define do

  on get do
    on "hello" do
      # create makes the resource immediately
      @user = User.create(
        email: 'dogruyolserdar@gmail.com',
        created_at: Time.now
      )

      @user.save

      res.headers["Content-Type"] = "application/json; charset=utf-8"
      res.write(@user.to_json)
    end

    on root do
      res.redirect "/hello"
    end
  end
end
