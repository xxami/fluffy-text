
using Gtk;
using GlobalDefinitions;

class FluffyUI : GLib.Object {

	private Window window;

	public FluffyUI() {;
		this.window = new Window();
		this.window.title = "fluffy-text r" + GlobalDefinitions.GIT_REVISION;
		this.window.destroy.connect(Gtk.main_quit);
		this.init_controls();
		this.window.show_all();
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

