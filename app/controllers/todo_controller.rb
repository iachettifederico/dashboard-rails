class TodoController < ApplicationController
  def index
    todo = [
            "Org Mode files guides",
            "TODO App",
            "Fulcrum integration (ability to check the current and future stories)",
            "Ubuntu install",
            "Gems & Tools",
            "Cheatsheets",
            "Most frequently used documentation pages",
            "Time Converter and/or Link to it",
            "Useful videos",
            "Hanging Ruby schedule",
            "Emacs documents",
            "Evernote Integration (define a good workflow)",
            "",
           ]
    render "index", locals: { todo: todo }
  end
end
