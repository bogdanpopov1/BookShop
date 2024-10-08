using BookShop.Pages;
using System.Windows;

namespace BookShop
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new BookPage());
        }
    }
}
