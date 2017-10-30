package app.service;

import app.domain.Book;
import app.domain.Category;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Abbot
 * Date: 2017-10-30
 * Time: 17:02
 * Description:
 */
@Service
public class BookServiceImpl implements BookService
{

    /**
     * This implemention is not thread-save.
     */
    private List<Category> categories;
    private List<Book> books;

    public BookServiceImpl()
    {
        categories = new ArrayList<Category>();
        Category category1 = new Category(1,"Computing");
        Category category2 = new Category(2,"Travel");
        Category category3 = new Category(3,"Health");
        categories.add(category1);
        categories.add(category2);
        categories.add(category3);

        books = new ArrayList<Book>();
        books.add(new Book(1L,"9780980839623","Servlet & JSP: A Tutorial",category1,"Budi Kurniawan"));
        books.add(new Book(2L,"9780980839630","C#: A Beginner's Tutorial",category1,"Jayden Ky"));
    }
    public List<Category> getAllCategories()
    {



        return categories;
    }

    public Category getCategory(int id)
    {
        for (Category category : categories)
        {
            if(id == category.getId())
            {
                return category;
            }
        }
        return null;
    }

    public List<Book> getAllBooks()
    {
        return books;
    }

    public Book save(Book book)
    {
        book.setId(getNextId());
        books.add(book);
        return book;
    }

    public Book update(Book book)
    {
        int bookCount = books.size();
        for (int i = 0; i < bookCount; i++)
        {
            Book saveBook = books.get(i);
            if(saveBook.getId() == book.getId())
            {
                books.set(i,book);
                return book;
            }
        }
        return book;
    }

    public Book get(long id)
    {
        for (Book book : books)
        {
            if (id == book.getId())
            {
                return book;
            }
        }
        return null;
    }

    public long getNextId()
    {
        // needs to be locked
        long id = 0L;
        for (Book book : books)
        {
            long bookId = book.getId();
            if(bookId > id)
            {
                id = bookId;
            }
        }
        return id + 1;
    }
}
