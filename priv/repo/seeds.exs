# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GraphqlInit.Repo.insert!(%GraphqlInit.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias GraphqlInit.User
alias GraphqlInit.Post
alias GraphqlInit.Repo

Repo.insert!(%User{name: "Tomo Hung", email: "tomo@hung.com"})
Repo.insert!(%User{name: "Nancy Lin", email: "nancy@lin.com"})

for _ <- 1..10 do
  Repo.insert!(%Post{
    title: Faker.Lorem.sentence,
    body: Faker.Lorem.paragraph,
    user_id: [1, 2] |> Enum.take_random(1) |> hd
  })
end

