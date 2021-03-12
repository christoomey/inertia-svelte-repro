class UsersController < ApplicationController
  def index
    render(
      inertia: "Users",
      props: {
        users: [
          { id: 1, name: "Leslie Knope" },
          { id: 2, name: "Ben Wyatt" },
          { id: 3, name: "Ron Swanson" },
          { id: 4, name: "Anne Perkins" },
        ]
      }
    )
  end
end
