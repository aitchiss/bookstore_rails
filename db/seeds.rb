Book.delete_all
Author.delete_all

a1 = Author.create({name: 'Dan Brown'})
a2 = Author.create({name: 'Charles Dickens'})
a3 = Author.create({name: 'JK Rowling'})

b1 = Book.create({author: a1, title: 'The Da Vinci Code'})
b2 = Book.create({author: a1, title: 'Inferno'})

b3 = Book.create({author: a2, title: 'Hard Times'})

b4 = Book.create({author: a3, title: 'The Casual Vacancy'})