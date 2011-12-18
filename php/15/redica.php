<?php
  $string = 'tabdaderdty';
  $counter = array_fill(0, 255, 0);
  for ($i = 0; $i < strlen($string); $i++) {
    $counter[ord($string[$i])]++;
  }
  arsort($counter);
  echo $string.PHP_EOL;
  foreach($counter as $k => $v){
    if ($v == 0) {
      break;
    }
    echo str_repeat(chr($k), $v);
  }
  echo PHP_EOL;
?>
