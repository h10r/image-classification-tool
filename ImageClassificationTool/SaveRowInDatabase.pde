class SaveRowInDatabase extends ClickHandler {  
  public SaveRowInDatabase() {
  
  }

  void run() {
    currentImageInDatabase.updateTags();
    database.insertOrUpdate( currentImageInDatabase );
  }  
}

