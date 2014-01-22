
import de.bezier.data.sql.*;

class Database {

  SQLite db;

  public Database( PApplet parent ) {
    this.db = new SQLite( parent, "hendrik.db" );
  }

  void read() {
    if ( this.db.connect() )
    {
      String[] tableNames = this.db.getTableNames();

      println( tableNames[0] );
    }
  }

  DatabaseImage find( String findPath ) {
    DatabaseImage t = new DatabaseImage( "" );

    if ( this.db.connect() )
    {      
      String query = "SELECT * FROM images WHERE FullPath='" + findPath + "'";
      this.db.query( query );

      this.db.setFromRow( t );
    }

    return t;
  }

  /*
   *
   * INSERT INTO images VALUES( NULL, TIME('now'), "random/path/whatever.png", "red,red-orange,blue", "some,clever,tags" );
   *
   */

  void insert( DatabaseImage img ) {
    if ( this.db.connect() )
    {      
      String query = "INSERT INTO images " + String.format( " VALUES( NULL, '%s', '%s', '%s' );", img.FullPath, img.Colors, img.Tags );
      this.db.query( query );
    }
  }

  void listAllImages() {
    if ( this.db.connect() )
    {
      this.db.query( "SELECT * FROM images" );

      DatabaseImage t;

      while ( this.db.next () )
      {
        t = new DatabaseImage( "" );
        this.db.setFromRow( t );
        println( t.FullPath );
      }
    }
  }

  void delete( DatabaseImage img ) {
  }

  void write() {
  }
}

