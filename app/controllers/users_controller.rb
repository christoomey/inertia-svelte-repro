class UsersController < ApplicationController
  def index
    render(inertia: "Users", props: { users: users })
  end

  def show
    render(
      inertia: "User",
      props: {
        user: users.find { |u| u[:id].to_s == params[:id] }
      }
    )
  end

  private

  def users
    [
      { id: 1, name: "Leslie Knope" },
      { id: 2, name: "Ben Wyatt" },
      { id: 3, name: "Ron Swanson" },
      { id: 4, name: "Anne Perkins" },
    ]
  end
end
