
let _ = require( 'wTools' );
let Ts = require( 'wtranspile' );
let ts = new Ts().form();

let session = ts.session
({
  inputPath : __filename,
  outputPath : _.path.join( __dirname, '../temp.tmp/Sample.s' ),
});

session.form().proceed()
.doThen( ( err ) =>
{
  if( err )
  _.errLogOnce( err );
});
