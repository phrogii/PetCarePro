extends Node

var title
var body

var posts = []
var post_count = 0  # Counter for post numbers

func add_post(title: String, body: String):
	post_count += 1  # Increment the post count
	var post = {
		"post_number": post_count,
		"title": title,
		"body": body
	}
	posts.append(post)
