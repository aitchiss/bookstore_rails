Book.delete_all
Author.delete_all

a1 = Author.create({name: 'Dan Brown'})
a2 = Author.create({name: 'Charles Dickens'})
a3 = Author.create({name: 'JK Rowling'})

b1 = Book.create({author: a1, title: 'The Da Vinci Code'})
b2 = Book.create({author: a1, title: 'Inferno'})

b3 = Book.create({author: a2, title: 'Hard Times'})

b4 = Book.create({author: a3, title: 'The Casual Vacancy'})

bs1 = Bookstore.create({name: 'Waterstones', location: 'Princes St'})
bs2 = Bookstore.create({name: 'Blackwells', location: 'On the bridges'})

Sale.create({ author: a1, bookstore: bs2, price: 10, date: '2017-05-09' })
Sale.create({ author: a3, bookstore: bs1, price: 8, date: '2015-02-12' })