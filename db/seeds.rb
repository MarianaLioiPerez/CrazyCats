# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

number_of_posts = 6
number_of_posts.times do
Post.create(title: Faker::Book.title, description:Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false))
end

    i = 0
    until User.count == 20 do
        User.create(email: "test#{i}@gmail", password: "asdasdasd",
        "password_confirmation": "asdasdasd", image: Faker::Avatar.image, name:
        Faker::Name.name)
        i += 1
end

posts = Post.all
users = User.all


until Comment.count == 10 do
    Comment.create(content: Faker::Lorem.paragraph_by_chars(number: 200,
    supplemental: false), post_id: posts.sample.id, user_id:users.sample.id)
end

r_type = %w[post comment]
comments = Comment.all
kinds = Post::Kinds

until Reaction.count == 1000 do
    rel_type = r_type.sample
    post = posts.sample
    user = users.sample
    comment = comments.sample

    if rel_type == "post"
        Reaction.create(post_id: post.id, user_id: user.id, kind: kinds.sample, reaction_type: rel_type)
      else
        Reaction.create(comment_id: comment.id, user_id: user.id, kind: kinds.sample, reaction_type: rel_type)
    end
end