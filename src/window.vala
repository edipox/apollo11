using Gtk;

class Window : Gtk.Window {
    public Window () {
        var settings = new GLib.Settings ("com.github.nine-h.apollo11");
        stdout.printf ( "window-height: %i\n", settings.get_int ("window-height") );
        stdout.printf ( "window-width: %i\n", settings.get_int ("window-width") );
        stdout.printf ( "window-x: %i\n", settings.get_int ("window-x") );
        stdout.printf ( "window-y: %i\n", settings.get_int ("window-y") );
        
        this.set_position ( Gtk.WindowPosition.CENTER );
        this.set_default_size ( 350, 500 );
        this.set_border_width ( 12 );
        this.destroy.connect ( quit );
        
        var header = new ApolloHeader ();
        this.set_titlebar ( header );
        
        this.add ( new HelloHouston(Gtk.Orientation.VERTICAL, 0) );
        
        show_all ();
        Gtk.main ();
    }
    
    private void quit () {
        //settings.set_int ("");
        stdout.printf ("thank you for playing wing commander :D\n");
        Gtk.main_quit ();
    }
}
