# For more information see: http://emberjs.com/guides/routing/

Posthuman.Router.map ->
  @resource "posts", ->
  	@resource "post", path: ":post_id"

  @resource "tags"

  @resource "about"

  @resource "search"

  @resource "authors", ->
  	@resource "author", path: ":author_id"

  @route "login"
  @route "logout"

  @route "new"

  @route "edit", path: "/edit/:post_id"