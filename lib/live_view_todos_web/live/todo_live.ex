defmodule LiveViewTodosWeb.TodoLive do
  use Phoenix.LiveView

  alias LiveViewTodos.Todos
  alias LiveViewTodosWeb.TodoView

  def mount(_session, socket) do
    IO.puts("hello world 2")
    {:ok, fetch(socket)}
  end

  def render(assigns) do
    IO.puts("hello world 1")
    TodoView.render("todos.html", assigns)
  end

  defp fetch(socket) do
    IO.puts("hello world 3")
    assign(socket, %{todos: Todos.list_todos()})
  end
end