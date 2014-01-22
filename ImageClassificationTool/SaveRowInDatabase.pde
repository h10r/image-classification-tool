class SaveRowInDatabase extends ClickHandler {
  
  public SaveRowInDatabase() {
  
  }

  void run() {
    println( "SaveRowInDatabase" );
    
    database.insert( currentImageInDatabase );
    
    database.listAllImages();
  }  
}

