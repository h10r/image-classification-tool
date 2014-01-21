class FolderPicker extends ClickHandler {
  ImageFolder Images;

  public FolderPicker( ImageFolder imageFolder ) {
    this.Images = imageFolder;
  }

  void show() {
    selectFolder("Select a file : ", "folderSelected");
  }

  void folderSelected(File selection) {
    if (selection == null) {
      println("Window was closed or the user hit cancel.");
    } 
    else {
      String path = selection.getAbsolutePath();
      this.Images.setImagePath( path );
    }
  }

  void run() {
    println( "run() folderPicker" );
    this.show();
  }  
}

