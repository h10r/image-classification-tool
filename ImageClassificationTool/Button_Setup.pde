final int MENU_LEFT_X = 850;
final int MENU_LEFT_W = 160;

final int MENU_FIRST_Y = 0;
final int MENU_OFFSET_Y = 32;

final color colorButtonHighlight = color( 207 );

void setupButtons() {
  
  Button b1 = new Button( "Yellow" );
  b1.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (1*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b1.setCheckable( true );
  b1.setBackgroundAndHighlightColors( color(255, 242, 17), colorButtonHighlight );
  b1.setClickHandler( new SetDataOnClickHandler("colors","yellow") );
  buttons.add( b1 );
  
  Button b2 = new Button( "Yellow-Orange" );
  b2.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (2*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b2.setCheckable( true );
  b2.setBackgroundAndHighlightColors( color(248, 184, 14), colorButtonHighlight );
  b2.setClickHandler( new SetDataOnClickHandler("colors","yellow-orange") );
  buttons.add( b2 );
  
  Button b3 = new Button( "Orange" );
  b3.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (3*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b3.setCheckable( true );
  b3.setBackgroundAndHighlightColors( color(234, 120, 21), colorButtonHighlight );
  b3.setClickHandler( new SetDataOnClickHandler("colors","orange") );
  buttons.add( b3 );

  Button b4 = new Button( "Red-Orange" );
  b4.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (4*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b4.setCheckable( true );
  b4.setBackgroundAndHighlightColors( color(218, 76, 26), colorButtonHighlight );
  b4.setClickHandler( new SetDataOnClickHandler("colors","red-orange") );
  buttons.add( b4 );

  Button b5 = new Button( "Red" );
  b5.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (5*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b5.setCheckable( true );
  b5.setBackgroundAndHighlightColors( color(203, 33, 38), colorButtonHighlight );
  b5.setClickHandler( new SetDataOnClickHandler("colors","red") );
  buttons.add( b5 );

  Button b6 = new Button( "Red-Purple" );
  b6.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (6*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b6.setCheckable( true );
  b6.setBackgroundAndHighlightColors( color(182, 46, 86), colorButtonHighlight );
  b6.setClickHandler( new SetDataOnClickHandler("colors","red-purple") );
  buttons.add( b6 );

  Button b7 = new Button( "Purple" );
  b7.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (7*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b7.setCheckable( true );
  b7.setBackgroundAndHighlightColors( color(145, 53, 130), colorButtonHighlight );
  b7.setClickHandler( new SetDataOnClickHandler("colors","purple") );
  buttons.add( b7 );

  Button b8 = new Button( "Blue-Purple" );
  b8.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (8*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b8.setCheckable( true );
  b8.setBackgroundAndHighlightColors( color(120, 98, 155), colorButtonHighlight );
  b8.setClickHandler( new SetDataOnClickHandler("colors","blue-purple") );
  buttons.add( b8 );

  Button b9 = new Button( "Blue" );
  b9.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (9*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b9.setCheckable( true );
  b9.setBackgroundAndHighlightColors( color(49, 120, 176), colorButtonHighlight );
  b9.setClickHandler( new SetDataOnClickHandler("colors","blue") );
  buttons.add( b9 );

  Button b10 = new Button( "Blue-Green" );
  b10.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (10*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b10.setCheckable( true );
  b10.setBackgroundAndHighlightColors( color(33, 147, 112), colorButtonHighlight );
  b10.setClickHandler( new SetDataOnClickHandler("colors","blue-green") );
  buttons.add( b10 );

  Button b11 = new Button( "Green" );
  b11.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (11*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b11.setCheckable( true );
  b11.setBackgroundAndHighlightColors( color(24, 150, 50), colorButtonHighlight );
  b11.setClickHandler( new SetDataOnClickHandler("colors","green") );
  buttons.add( b11 );

  Button b12 = new Button( "Yellow-Green" );
  b12.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (12*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b12.setCheckable( true );
  b12.setBackgroundAndHighlightColors( color(170, 201, 35), colorButtonHighlight );
  b12.setClickHandler( new SetDataOnClickHandler("colors","yellow-green") );
  buttons.add( b12 );

  Button b13 = new Button( "White" );
  b13.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (13*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b13.setCheckable( true );
  b13.setBackgroundAndHighlightColors( color(255,255,255), colorButtonHighlight );
  b13.setClickHandler( new SetDataOnClickHandler("colors","white") );
  buttons.add( b13 );

  Button b14 = new Button( "Gray" );
  b14.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (14*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b14.setCheckable( true );
  b14.setBackgroundAndHighlightColors( color(127,127,127), colorButtonHighlight );
  b14.setClickHandler( new SetDataOnClickHandler("colors","gray") );
  buttons.add( b14 );

  Button b15 = new Button( "Black" );
  b15.setPositionAndDimensions( MENU_LEFT_X, MENU_FIRST_Y + (15*MENU_OFFSET_Y), MENU_LEFT_W, 30 );
  b15.setCheckable( true );
  b15.setButtonForegroundColor( color(255,255,255) );
  b15.setBackgroundAndHighlightColors( color(0,0,0), colorButtonHighlight );
  b15.setClickHandler( new SetDataOnClickHandler("colors","black") );
  buttons.add( b15 );

  Button bFolderSelect = new Button( "Select Folder" );
  bFolderSelect.setPositionAndDimensions( MENU_LEFT_X, height - 70, MENU_LEFT_W, 30 );
  bFolderSelect.setBackgroundAndHighlightColors( color(46, 204, 113), colorButtonHighlight );
  bFolderSelect.setClickHandler( folderPickerClickHandler );
  buttons.add( bFolderSelect );

  Button bSave = new Button( "Save Database" );
  bSave.setPositionAndDimensions( MENU_LEFT_X, height - 35, MENU_LEFT_W, 30 );
  bSave.setBackgroundAndHighlightColors( color(231, 76, 60), color(236, 112, 99) );
  bSave.setClickHandler( saveRowInDatabaseClickHandler );
  buttons.add( bSave );
}
