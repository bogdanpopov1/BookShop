using BookShop.Database;
using System.Collections.Generic;
using System.Linq;

namespace BookShop.Classes
{
    public static class DBConnection
    {
        private static BookShopEntities _context = new BookShopEntities();

        public static List<Book> GetBooks()
        {
            return _context.Book.ToList();
        }

        public static List<MaxDiscount> GetMaxDiscounts()
        {
            return _context.MaxDiscount.ToList();
        }

        public static List<ActiveDiscount> GetActiveDiscounts()
        {
            return _context.ActiveDiscount.ToList();
        }
    }
}
