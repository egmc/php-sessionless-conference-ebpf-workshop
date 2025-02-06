<?php
try {
  throw new RuntimeException("happy");


} catch (Exception $e) {
	    echo '捕捉した例外: ',  $e->getMessage(), "\n";
}
try {
  throw new Exception("happy");


} catch (Exception $e) {
	    echo '捕捉した例外: ',  $e->getMessage(), "\n";
}

throw new Exception("unhappy");
