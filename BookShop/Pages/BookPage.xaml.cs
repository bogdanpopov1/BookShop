using System.Collections.Generic;
using System.Windows.Controls;
using BookShop.Classes;
using BookShop.Database;

namespace BookShop.Pages
{
    public partial class BookPage : Page
    {
        private List<Book> _books;
        public BookPage()
        {
            InitializeComponent();

            _books = DBConnection.GetBooks();
            BookListView.ItemsSource = _books;
        }
    }
}