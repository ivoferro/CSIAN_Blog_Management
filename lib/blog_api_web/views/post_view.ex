defmodule BlogApiWeb.PostView do
  use BlogApiWeb, :view
  alias BlogApiWeb.PostView

  def render("index.json", %{posts: posts}) do
    render_many(posts, PostView, "post.json")
  end

  def render("show.json", %{post: post}) do
    render_one(post, PostView, "post.json")
  end

  def render("post.json", %{post: post}) do
    %{
      id: post.id,
      title: post.title,
      body: post.body,
      inserted_at: post.inserted_at,
      updated_at: post.updated_at
    }
  end
end
