final color labelForegroundColor = color(0);
//final color labelBackgroundColor = color(255);

class Label {

  int X, Y;
  
  String Label;

  public Label( String label ) {
    this.Label = label;
  }
  
  void setPositionAndDimensions( int x, int y ) {
    this.X = x;
    this.Y = y;
  }
  
  void setText( String newLabel ) {
    this.Label = newLabel;
  }

  void display() {
    fill( labelForegroundColor );
    text( this.Label, this.X, this.Y );
  }
}

