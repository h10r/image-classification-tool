/*
*
* Image Classification Tool
*
* Hendrik Heuer, 2014
*
* See README.MD
*
*/

PFont f;

TextInput textInput;

Label lblFilename;

ArrayList<Button> buttons;
ArrayList<Label> labels;

ImageFolder imageFolder;
FolderPicker folderPickerClickHandler;
SaveRowInDatabase saveRowInDatabaseClickHandler;

KeyHandler keyHandler;

Database database;

DatabaseImage currentImageInDatabase = new DatabaseImage( "" );

void setup() {
  size(1024, 600);

  f = createFont("OpenSans-Bold", 12, true);
  textFont(f);

  keyHandler = new KeyHandler();

  textInput = new TextInput();
  textInput.setPositionAndDimensions( 10, 540, 800, 55 );

  imageFolder = new ImageFolder();
  imageFolder.setPositionAndDimensions( 10, 10, 830, 500 );
  
  // float imageRation =  this.H / this.W;
  
  folderPickerClickHandler = new FolderPicker( imageFolder );
  saveRowInDatabaseClickHandler = new SaveRowInDatabase();

  labels = new ArrayList<Label>();
  setupLabels();  

  // make sure the clickHandler are set before setting the buttons
  buttons = new ArrayList<Button>();
  setupButtons();
  
  database = new Database( this );
}

void setupLabels() {
  Label l0 = new Label( "Colors in image:" );
  l0.setPositionAndDimensions( MENU_LEFT_X, 20 );
  labels.add( l0 );

  Label l1 = new Label( "Tag as (comma-separated values):" );
  l1.setPositionAndDimensions( 10, 530 );
  labels.add( l1 );
  
  lblFilename = new Label( "No file selected" );
  lblFilename.setPositionAndDimensions( 300, 530 );
  labels.add( lblFilename );
}

void draw() {
  update(mouseX, mouseY);

  background( 231, 235, 240 ); // 94 is my desktop background grey

  for (int i = buttons.size()-1; i >= 0; i--) {
    Button b = buttons.get(i);    
    b.display();
  }

  for (int i = labels.size()-1; i >= 0; i--) {
    Label l = labels.get(i);    
    l.display();
  }

  textInput.display();
  
  imageFolder.display();
}

void update(int x, int y) {
  if (mousePressed == true) {
    for (int i = buttons.size()-1; i >= 0; i--) {
      Button b = buttons.get(i);
      b.checkIfMouseOver(mouseX, mouseY);
    }
  }
}

void mousePressed() {
}

void mouseReleased() {
  for (int i = buttons.size()-1; i >= 0; i--) {
    Button b = buttons.get(i);

    if ( b.IsOver ) {
      b.buttonPressed();
    }
     b.reset();
  }
}

void resetButtonStates() {
  for (int i = buttons.size()-1; i >= 0; i--) {
    Button b = buttons.get(i);
    b.resetCheckbox();
  }
}

void keyPressed() {
  keyHandler.pressed();
}

void folderSelected(File selection) {
  folderPickerClickHandler.folderSelected( selection );
}

