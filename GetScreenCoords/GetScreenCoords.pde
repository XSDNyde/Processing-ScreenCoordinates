


void setup()
{
  size( 100, 100 );
}



void draw()
{
  stroke( color( 255 ) );
  strokeWeight( 5.0 );
  
  PVector p = new PVector( 50, 10 );
  point( p.x, p.y );
  println( "\n"+p );
  
  translate( 15, 25 );
  rotate( radians( 90 ) );
  
  stroke( color( 255, 0, 0 ) );
  point( p.x, p.y );
  println( getOnScreenCoordinates( p ) );
}



void printMatrix2D( PMatrix2D m )
{
  println( m.m00+" "+m.m01+" "+m.m02+"\n" +
           m.m10+" "+m.m11+" "+m.m12 );
}



PVector getOnScreenCoordinates( PVector p )
{
  return getMatrix().mult( p, null );
}
