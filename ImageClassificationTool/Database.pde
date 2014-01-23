
import de.bezier.data.sql.*;

class Database {

  SQLite db;

  public Database( PApplet parent ) {
    this.db = new SQLite( parent, "hendrik.db" );
  }

  DatabaseImage find( String findPath ) {
    DatabaseImage t = new DatabaseImage( "" );

    if ( this.db.connect() )
    {      
      String query = "SELECT * FROM images WHERE FullPath='" + findPath + "'";
      this.db.query( query );

      if (db.next())
      {
        this.db.setFromRow( t );
      }
    }

    return t;
  }

  /*
   *
   * INSERT INTO images VALUES( NULL, TIME('now'), "random/path/whatever.png", "red,red-orange,blue", "some,clever,tags" );
   *
   */

  void insertOrUpdate( DatabaseImage img ) {
    if( this.entryExits( img.FullPath ) ) {
      this.update( img );
    } else {
      this.insert( img );
    }  
  }
  
  boolean entryExits( String entryFullPath ) {
    boolean doesEntryExist = false;
    
    if ( this.db.connect() )
    {      
      String query = "SELECT * FROM images WHERE FullPath='" + entryFullPath + "'";
      this.db.query( query );

      if (db.next())
      {
        if (DEBUG_MODE) {
          println( db.getString("FullPath") );
        }
        doesEntryExist = true;
      }
    }
    
    return doesEntryExist;
  }  
  
  void update( DatabaseImage img ) {
    if ( this.db.connect() )
    {      
      String query = String.format( "UPDATE images SET Colors='%s', Tags='%s' WHERE FullPath='%s'", img.Colors, img.Tags, img.FullPath ); 
      this.db.query( query );
      
      if (DEBUG_MODE) {
        println( query );
      } 
    }
  }
  
  void insert( DatabaseImage img ) {
    if ( this.db.connect() )
    {      

      String query = "INSERT INTO images " + String.format( " VALUES( NULL, '%s', '%s', '%s' );", img.FullPath, img.Colors, img.Tags );
      this.db.query( query );
      
      if (DEBUG_MODE) {
        println( query );
      }
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
      }
    }
  }

  void delete( DatabaseImage img ) {
  }

  void write() {
  }
}

