class SaveRowInDatabase extends ClickHandler {
  
  public SaveRowInDatabase() {
  
  }

  void run() {
    println( "SaveRowInDatabase" );
    
    currentImageInDatabase.updateTags();
    database.insertOrUpdate( currentImageInDatabase );
  }  
}

