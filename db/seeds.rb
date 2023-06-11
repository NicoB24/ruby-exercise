# Create some users
users = [
  { first_name: 'John', last_name: 'Doe' },
  { first_name: 'Jane', last_name: 'Smith' },
  { first_name: 'Bob', last_name: 'Johnson' }
]

User.create!(users)

# Create some reviews for the users
users.each do |user|
  book = Book.create!(
    title: "#{user[:first_name]}'s favorite book",
    description: 'A great book',
    published_year: 2021
  )

  Review.create!(
    content: "#{user[:first_name]} loved this book!",
    rating: 5,
    user: User.find_by(first_name: user[:first_name]),
    book: book
  )
end
