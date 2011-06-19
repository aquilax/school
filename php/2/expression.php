<?php
$num = array(2,4,6,8);

function($x,$y){return $x+$y;},
  '-' => function($x,$y){return $x-$y;},
  '*' => function($x,$y){return $x*$y;},
  '/' => function($x,$y){return $x/$y;},
);

function calc($x, $y, $op){
  return $op($x,$y);
}

function recurse($level, $sum, $exp){
  global $num;
  global $op;
  if ($level == 4){
    if ($sum == 25){
      echo $exp."\n";
      die();
    }
    return;
  }
  $level++;
  foreach($num as $n){
    foreach($op as $s => $o){
      if (!($sum == 0 && $s == '/')){
        recurse ($level, calc($n, $sum, $o), '('.$n.$s.$exp.')');
      }
    }
  }
}

recurse(0,0,'');
?>
