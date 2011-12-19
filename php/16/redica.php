<?php
$K = 4;

function set($K){
  $prev = 0;
  for ($i = 0; $i < $K; $i++){
    $prev = $prev * 2 + 1;
  }
  return $prev;
}

echo set($K).PHP_EOL;
?>
