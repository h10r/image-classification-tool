/*
 *
 * Just use "sqlite3 tonks.db" on the command line to drop and create tables
 *
 * "CREATE TABLE IF NOT EXISTS images ( Id INTEGER PRIMARY KEY, time TIME, filename STRING, colors STRING, tags STRING );"
 *
 */

class DatabaseImage
{
  public Integer Id; 
  public String time;
  public String filename;
  public String colors;
  public String tags;
 
  private StringList ColorsList;

  public DatabaseImage( String newFilename ) {
    this.filename = newFilename;
    this.colors = "";
    this.tags = "";
    
    this.ColorsList = new StringList();
  }

  void addOrRemoveColor( String newColor ) {
    if ( this.ColorsList.hasValue( newColor ) == true ) {
      for ( int i = 0; i < this.ColorsList.size(); i++ ) {
        if ( this.ColorsList.get(i) == newColor ) {
          this.ColorsList.remove( i );
        }
      }
    } else {
      this.ColorsList.append( newColor );
    }

    this.updateFormattedString();
  }

  void updateFormattedString() {
    this.colors = "";
    
    for ( int i = 0; i < this.ColorsList.size(); i++ ) {
      this.colors = this.colors + this.ColorsList.get(i) + ",";
    }
  }
  
  void setTags( String newTags ) {
    this.tags = newTags;
  }
}

