defmodule GraphqlInit.Schema do
  use Absinthe.Schema
  import_types GraphqlInit.Schema.Types

  query do
    field :posts, list_of(:post) do
      resolve &GraphqlInit.PostResolver.all/2
    end

    field :users, list_of(:user) do
      resolve &GraphqlInit.UserResolver.all/2
    end

    field :user, type: :user do
      arg :id, non_null(:id)
      resolve &GraphqlInit.UserResolver.find/2
    end
  end
end
