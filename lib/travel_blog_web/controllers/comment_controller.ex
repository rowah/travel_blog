defmodule TravelBlogWeb.CommentController do
  use TravelBlogWeb, :controller


  alias TravelBlog.Blog



  ##this is what will be sent over from the comment form
  def create(conn, %{"post_id" => post_id, "comment" => comment_params}) do
    post = Blog.get_post!(post_id)

    #create comment
    case Blog.create_comment(post, comment_params) do
      {:ok, _comment} ->
        conn
        |> put_flash(:info, "Comment created successfully")
        |> redirect(to: Routes.post_path(conn, :show, post))

      {:error, _changeset} ->
      conn
      |> put_flash(:info, "Comment creation unsuccessful")
      |> redirect(to: Routes.post_path(conn, :show, post))

    end


  end
end
