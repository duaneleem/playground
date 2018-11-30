<?php
  // WP takes care of this already.
  session_start();

  // We just need to assign session_id() to the token key "session"
  // This returns null should there be session.
  // echo session_id();

  // Let's improve on it a bit.
  echo ((!empty(session_id()) ? session_id() : "0"));
  
  echo "\n";
?>