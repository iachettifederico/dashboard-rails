class TodoController < ApplicationController
  def index
    todo = [
            "Gems & Tools",
            "Cheatsheets",
            "Time Converter and/or Link to it",
            "Most frequently used documentation pages",
            "Org Mode files guides",
            "TODO App",
            "Redmine integration (ability to check the current and future stories)",
            "Ubuntu install",
            "Useful videos",
            "Hanging Ruby schedule",
            "Emacs documents",
            "Evernote Integration (define a good workflow)",
            "",
           ]
    render "index", locals: { todo: todo }
  end
end
