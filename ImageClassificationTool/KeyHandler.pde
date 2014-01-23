class KeyHandler {
  public KeyHandler() {
  }

  void pressed() {
    if (keyCode == BACKSPACE || keyCode == DELETE) {
      textInput.backspace();
    }
    if (keyCode == LEFT) {
      imageFolder.previousImage();
    }
    if (keyCode == RIGHT) {
      imageFolder.nextImage();
    }

    /* debug buttons
    if (key == 'h') {
      for (int i = buttons.size()-1; i >= 0; i--) {
        Button b = buttons.get(i);
        println( b.IsChecked );
      }
    }
    */

    if (key == ' ') {
      currentImageInDatabase.updateTags();
      database.insertOrUpdate( currentImageInDatabase );
    } 
    else {
      textInput.addKey( key );
    }
  }
}

