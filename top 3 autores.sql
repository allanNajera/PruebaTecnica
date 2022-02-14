USE [PruebaTec]
select top 3 author_name, sum(books.sold_copies) as sold from books cross join authors where authors.book_name = books.book_name  group by author_name order by sold desc