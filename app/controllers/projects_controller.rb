class ProjectsController < ApplicationController
  def index
    render(inertia: "Projects", props: { projects: projects })
  end

  def show
    render(
      inertia: "Project",
      props: {
        project: projects.find { |p| p[:id].to_s == params[:id] }
      }
    )
  end

  private

  def projects
    [
      { id: 1, name: "Harvest Festival" },
      { id: 2, name: "Lil Sebastian Memorial" },
      { id: 3, name: "Unity Concert" },
    ]
  end
end
