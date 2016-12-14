defmodule GraphqlInit.PostResolver do
  alias GraphqlInit.Repo
  alias GraphqlInit.Post

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end
end
