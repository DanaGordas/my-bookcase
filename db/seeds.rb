puts "Cleaning up the DB..."

Author.destroy_all
Book.destroy_all
Category.destroy_all
BookCategory.destroy_all


### Authors
puts "Creating authors..."
author1 = Author.create(first_name: "Margaret", last_name: "Atwood")
author2 = Author.create(first_name: "J. K.", last_name: "Rowling")
author3 = Author.create(first_name: "Caroline", last_name: "Criado Perez")
author4 = Author.create(first_name: "James", last_name: "Baldwin")


### Books
puts "Creating books..."

book1 = Book.create(name: "The Edible Woman", year: "1969", description: "The Edible Woman is a 1969 novel that helped to establish Margaret Atwood as a prose writer of major significance. It is the story of a young woman whose sane, structured, consumer-oriented world starts to slip out of focus. Following her engagement, Marian feels her body and her self are becoming separated. As Marian begins endowing food with human qualities that cause her to identify with it, she finds herself unable to eat, repelled by metaphorical cannibalism.[1] In a foreword written in 1979 for the Virago edition of the novel, Atwood described it as a protofeminist rather than feminist work. Atwood explores gender stereotypes through characters who strictly adhere to them (such as Peter or Lucy) and those who defy their constraints (such as Ainsley or Duncan).", original_language: "English", author: author1 )

book2 = Book.create(name: "The Handmaid's Tale", year: "1985", description: "The Handmaid's Tale is set in a near-future New England, in a totalitarian state, known as Gilead, that has overthrown the United States government. The Handmaid's Tale explores themes of subjugated women in a patriarchal society and the various means by which these women resist and attempt to gain individuality and independence.The Handmaid's Tale is structured into two parts, by night and by other various events. The novel can be interpreted as a double narrative: central protagonist Offred's personal struggle and the handmaids' shared plight. The night sections are solely about Offred, and the other sections (shopping, waiting room, household, etc.) are the stories that describe the possible life of every handmaid, though from the perspective of Offred. In many of these sections, Offred jumps between past and present as she retells the events leading up to the fall of women's rights and the current details of the life that she now lives.", original_language: "English", author: author1 )

book3 = Book.create(name: "The Testaments", year: "2019", description: "The Testaments is a sequel to The Handmaid's Tale (1985). The novel is set 15 years after the events of The Handmaid's Tale. It is narrated by Aunt Lydia, a character from the previous novel; Agnes, a young woman living in Gilead; and Daisy, a young woman living in Canada. The Testaments was joint winner of the 2019 Man Booker Prize, alongside Bernardine Evaristo's novel Girl, Woman, Other. It was also voted 'Best Fiction' novel in the Goodreads Choice Awards 2019, winning by over 50,000 votes.", original_language: "English", author: author1 )

book4 = Book.create(name: "The Casual Vacancy", year: "2012", description: "The novel is set in a suburban West Country town called Pagford and begins with the death of beloved Parish Councillor Barry Fairbrother. Subsequently, a seat on the council is vacant and a conflict ensues before the election for his successor takes place. Factions develop, particularly concerning whether to dissociate with a local council estate, 'the Fields', with which Barry supported an alliance. However, those running for a place soon find their darkest secrets revealed on the Parish Council online forum, ruining their campaign and leaving the election in turmoil.", original_language: "English", author: author2 )

book5 = Book.create(name: "Harry Potter and the Philosopher's Stone", year: "1997", description: "Harry Potter and the Philosopher's Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry's parents, but failed to kill Harry when he was just 15 months old.", original_language: "English",  author: author2 )

book6 = Book.create(name: "Invisible Women: Exposing Data Bias in a World Designed for Men", year: "2019", description: "Imagine a world where your phone is too big for your hand, where your doctor prescribes a drug that is wrong for your body, where in a car accident you are 47 per cent more likely to be seriously injured, where every week the countless hours of work you do are not recognised or valued. If any of this sounds familiar, chances are that you're a woman.Invisible Women shows us how, in a world largely built for and by men, we are systematically ignoring half the population. It exposes the gender data gap – a gap in our knowledge that is at the root of perpetual, systemic discrimination against women, and that has created a pervasive but invisible bias with a profound effect on women’s lives.", original_language: "English", author: author3 )

book7 = Book.create(name: "Giovanni's Room", year: "1956", description: "Baldwin's haunting and controversial second novel is his most sustained treatment of sexuality, and a classic of gay literature. In a 1950s Paris swarming with expatriates and characterized by dangerous liaisons and hidden violence, an American finds himself unable to repress his impulses, despite his determination to live the conventional life he envisions for himself. After meeting and proposing to a young woman, he falls into a lengthy affair with an Italian bartender and is confounded and tortured by his sexual identity as he oscillates between the two.", original_language: "English", author: author4 )

### Categories
puts "Creating categories..."

category1 = Category.create(name: "Fiction")
category2 = Category.create(name: "Dystopian")
category3 = Category.create(name: "Feminist")
category4 = Category.create(name: "Fantasy")
category5 = Category.create(name: "Children")
category6 = Category.create(name: "Non-fiction")
category7 = Category.create(name: "LGBTQ")
category8 = Category.create(name: "American")


### Book Categories
puts "Creating book categories..."

BookCategory.create(book: book1,  category: category1 )
BookCategory.create(book: book1,  category: category3 )
BookCategory.create(book: book2,  category: category1 )
BookCategory.create(book: book2,  category: category2 )
BookCategory.create(book: book2,  category: category3 )
BookCategory.create(book: book3,  category: category1 )
BookCategory.create(book: book3,  category: category2 )
BookCategory.create(book: book3,  category: category3 )
BookCategory.create(book: book4,  category: category1 )
BookCategory.create(book: book5,  category: category1 )
BookCategory.create(book: book5,  category: category4 )
BookCategory.create(book: book5,  category: category5 )
BookCategory.create(book: book6,  category: category6 )
BookCategory.create(book: book6,  category: category3 )
BookCategory.create(book: book7,  category: category1 )
BookCategory.create(book: book7,  category: category7 )
BookCategory.create(book: book7,  category: category8 )


puts "Finished!"
