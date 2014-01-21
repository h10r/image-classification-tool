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
    else {
      textInput.addKey( key );
    }
  }
}

