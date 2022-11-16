const mysql = require("mysql");

// conn = mysql.createConnection({
//     host: 'mysql5030.site4now.net',
//     user: 'a8fe6b_agiagi1',
//     password: 'Agilan@2003',
//     database: 'db_a8fe6b_agiagi1'
//     // host: "localhost",
//     // user: "root",
//     // password: "password",
//     // database: "vcdb",
//     // port:3306
// });

// conn.connect((err) => {
//     if (err) throw err;
//     else {
//         console.log("Database connected!");
//     }
// }); 



var db_config = {
    // host: 'localhost',
    //   user: 'root',
    //   password: '',
    //   database: 'example'
    host: 'mysql5030.site4now.net',
    user: 'a8fe6b_agiagi1',
    password: 'Agilan@2003',
    database: 'db_a8fe6b_agiagi1'
    // host: "localhost",
    // user: "root",
    // password: "password",
    // database: "vcdb",
    // port:3306
  };
  
  var conn;
  
  function handleDisconnect() {
    conn = mysql.createConnection(db_config); // Recreate the connection, since
                                                    // the old one cannot be reused.
  
    conn.connect(function(err) {              // The server is either down
      if(err) {                                     // or restarting (takes a while sometimes).
        console.log('error when connecting to db:', err);
        setTimeout(handleDisconnect, 2000); // We introduce a delay before attempting to reconnect,
      }                                     // to avoid a hot loop, and to allow our node script to
    });                                     // process asynchronous requests in the meantime.
                                            // If you're also serving http, display a 503 error.
    conn.on('error', function(err) {
      console.log('db error', err);
      if(err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
        handleDisconnect();                         // lost due to either server restart, or a
      } else {                                      // connnection idle timeout (the wait_timeout
        throw err;                                  // server variable configures this)
      }
    });
  }
  
  handleDisconnect();


  module.exports = conn;