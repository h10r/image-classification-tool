
import de.bezier.data.sql.*;

class Database {

  SQLite db;

  public Database( PApplet parent ) {
    this.db = new SQLite( parent, "tonks.db" );
  }

  void read() {
    if ( this.db.connect() )
    {
      String[] tableNames = this.db.getTableNames();

      println( tableNames[0] );
    }
  }

  DatabaseImage find( String filename ) {
    String query = "SELECT * FROM images WHERE filename='" + filename + "'";
    this.db.query( query );

    DatabaseImage t = new DatabaseImage( "" );
    this.db.setFromRow( t );

    return t;
  }

  /*
   *
   * INSERT INTO images VALUES( NULL, TIME('now'), "random/path/whatever.png", "red,red-orange,blue", "some,clever,tags" );
   *
   */

  void insert( DatabaseImage img ) {
    String query = "INSERT INTO images " + String.format( " VALUES( NULL, TIME('now'), %s, %s, %s );", img.Filename, img.Colors, img.Tags );
    this.db.query( query );
  }

  void listAllImages() {
    this.db.query( "SELECT * FROM images" );

    DatabaseImage t;
    
    while ( this.db.next () )
    {
      t = new DatabaseImage( "" );
      this.db.setFromRow( t );
      println( t );
    }
  }

  void delete( DatabaseImage img ) {
  }

  void write() {
  }
}

