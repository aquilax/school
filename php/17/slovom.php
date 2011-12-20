<?php

function edinici($n) {
  switch($n) {
    case 1: return 'едно';
    case 2: return 'две';
    case 3: return 'три';
    case 4: return 'четири';
    case 5: return 'пет';
    case 6: return 'шест';
    case 7: return 'седем';
    case 8: return 'осем';
    case 9: return 'девет';
  }
}

function teen($n) {
  switch($n) {
    case 10: return 'десет';
    case 12: return 'дванадесет';
    default: return edinici($n-10).'десет';
  }
}

function desetici($n){
  switch($n) {
    case 1: return 'десет';
    case 2: return 'двадесет';
    default: return edinici($n).'десет';
  }
}

function stotici($n) {
  switch ($n){
    case 1: return 'сто';
    case 2: return 'двеста';
    case 3: return 'триста';
    default: return edinici($n).'стотин';
  }
}

function slovom ($num) {
  $num_str = strrev((string)(int)$num);
  $name = array();
  if ($num == 1000) return 'хиляда';
  if ($num == 0) return 'нула';
  if ($num && $num % 100 == 0) return stotici($num_str[2]);
  if ($num > 9 && $num < 20) {
    return teen($num);
  }
  if (isset($num_str[0])){
    $name[] = edinici($num_str[0]);
    if ($num_str[0] != '0' && strlen($num_str) > 1) {
      $name[] = 'и';
    }
  }
  if (isset($num_str[1])){
    $name[] = desetici($num_str[1]);
    if ($num_str[0] == '0' && strlen($num_str) > 2) {
      $name[] = 'и';
    }
  }
  if (isset($num_str[2])){
    $name[] = stotici($num_str[2]);
  }
  return implode (' ', array_reverse($name));
}
$test = array(0, 1, 2, 3, 10, 12, 15, 23, 400, 567, 120, 121, 123, 999, 1000);
foreach ($test as $num) {
  echo $num.': '.slovom($num).PHP_EOL;
}

?>
