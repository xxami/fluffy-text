
using Gtk;

class FluffyUI : GLib.Object {

	private Window window;

	public FluffyUI() {;
		this.window = new Window();
		this.window.title = "fluffy-text";
		this.window.destroy.connect(Gtk.main_quit);
		this.init_controls();
		Gtk.main();
	}

	private void init_controls() {
		
	}

}

class FluffyProgram : GLib.Object {
	
	public static int main(string[] args) {
		Gtk.init(ref args);
		FluffyUI ui = new FluffyUI();
		return 0;
	}

}

