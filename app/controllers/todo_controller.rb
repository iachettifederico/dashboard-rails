class TodoController < ApplicationController
  def index
    todo = [
            "Ubuntu install",
            "Gems & Tools",
            "Cheatsheets",
           ]
    render "index", locals: { todo: todo }
  end
end
