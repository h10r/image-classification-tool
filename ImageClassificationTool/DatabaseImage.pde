/*
 *
 * Just use "sqlite3 tonks.db" on the command line to drop and create tables
 *
 * "CREATE TABLE IF NOT EXISTS images ( Id INTEGER PRIMARY KEY, time TIME, filename STRING, colors STRING, tags STRING );"
 *
 *
 *
 */

class DatabaseImage
{
  public String Filename;
  public String Colors;
  public StringList ColorsList;
 
  public String Tags;

  public DatabaseImage( String newFilename ) {
    this.Filename = newFilename;
    this.Colors = "";
    this.Tags = "";
    
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
    this.Colors = "";
    
    for ( int i = 0; i < this.ColorsList.size(); i++ ) {
      this.Colors = this.Colors + this.ColorsList.get(i) + ",";
    }
  }
  
  void setTags( String newTags ) {
    this.Tags = newTags;
  }
}

