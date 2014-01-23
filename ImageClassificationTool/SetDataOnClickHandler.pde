class SetDataOnClickHandler extends ClickHandler {
  ImageFolder Images;

  String Category;
  String Value;

  public SetDataOnClickHandler( String category, String value  ) {
    this.Category = category;
    this.Value = value;
  }

  void run() {    
    /*
    if ( currentImageInDatabase == null ) {
      println( "No image selected - select image! " );
      return;
    }
    */
    
    if ( this.Category == "colors" ) {
      currentImageInDatabase.addOrRemoveColor( this.Value );
      if ( DEBUG_MODE ) {
        println( currentImageInDatabase.Colors );
      }
    }
  }  
}

