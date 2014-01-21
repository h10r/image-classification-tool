
class Button {

  final PImage CachedCheckboxImageUnchecked = loadImage("data/unchecked.png");
  final PImage CachedCheckboxImageChecked = loadImage("data/checked.png");

  int X, Y, W, H;
  String Label;

  boolean IsOver = false;

  boolean IsCheckable = false;
  boolean IsChecked = false;

  color ButtonForegroundColor = color(0);
  color ButtonBackgroundColor = color(128);
  color ButtonBackgroundHighlight = color(128);

  color ButtonEdgeRoundness = 10;

  color ButtonTextOffsetX = 32;
  color ButtonTextOffsetY = 7;

  ClickHandler Handler;

  public Button( String label ) {
    this.Label = label;
  }

  void setPositionAndDimensions( int x, int y, int w, int h ) {
    this.X = x;
    this.Y = y;

    this.W = w;
    this.H = h;
  }

  void setButtonForegroundColor( color buttonForegroundColor ) {
    this.ButtonForegroundColor = buttonForegroundColor;
  }
  
  void setBackgroundAndHighlightColors( color buttonCustomBackground, color buttonCustomHighlight ) {
    this.ButtonBackgroundColor = buttonCustomBackground;
    this.ButtonBackgroundHighlight = buttonCustomHighlight;
  }

  void setClickHandler( ClickHandler handler ) {
    this.Handler = handler;
  }

  void setCheckable( boolean isCheckable ) {
    this.IsCheckable = isCheckable;
  }

  void toggleChecked() {
    this.IsChecked = !this.IsChecked;
  }


  void display() {
    if ( this.IsOver ) {
      fill( this.ButtonBackgroundHighlight );
    } 
    else {
      fill( this.ButtonBackgroundColor );
    }
    rect( this.X, this.Y, this.W, this.H, this.ButtonEdgeRoundness );

    if ( this.IsCheckable ) {
      if ( this.IsChecked ) {
        image( CachedCheckboxImageChecked, this.X + 5, this.Y + 5, 20, 20 );
      } 
      else {
        image( CachedCheckboxImageUnchecked, this.X + 5, this.Y + 5, 20, 20 );
      }
    }

    fill( this.ButtonForegroundColor );
    text( this.Label, this.X + this.ButtonTextOffsetX, this.Y + this.ButtonTextOffsetY, this.W, this.H );
  }

  void reset() {
    this.IsOver = false;
  }
  
  void resetCheckbox() {
    this.IsChecked = false;
  }

  void buttonPressed() {
    if ( this.IsCheckable ) {
      this.toggleChecked();
    }
    if ( this.Handler != null ) {
      this.Handler.run();
    }
  }

  void checkIfMouseOver(int mouse_x, int mouse_Y) {
    if (mouse_x >= this.X && mouse_x <= this.X + this.W && 
      mouse_Y >= this.Y && mouse_Y <= this.Y + this.H) {
      this.IsOver = true;
    }
  }
}

