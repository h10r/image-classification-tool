/*
 *
 * Just use "sqlite3 tonks.db" on the command line to drop and create tables
 *
 * "CREATE TABLE IF NOT EXISTS images ( Id INTEGER PRIMARY KEY, FullPath STRING, Colors STRING, Tags STRING );"
 *
 */

class DatabaseImage
{
  public Integer Id; 
  public String FullPath;
  public String Colors;
  public String Tags;
 
  private StringList ColorsList;

  public DatabaseImage( String newFullPath ) {
    this.FullPath = newFullPath;
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

