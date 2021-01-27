<?php
echo ("----------------pretest\n");
// pretest
$i = 0;
while ($i < 3){
    echo ("$i\n");
    $i++;
}

echo ("----------------posttest\n");
// posttest
$i = 0;
do {
    echo ("$i\n");
    $i++;
} while($i < 3);

echo ("----------------break\n");
// break
$i = 0;
while ($i < 3){
    if ($i == 2) break;
    echo ("$i\n");
    $i++;
}

echo ("----------------continue\n");
// continue
$i = 0;
while ($i < 3){
    $i++;
    if ($i == 2) continue;
    echo ("$i\n");
}

echo ("----------------breakouterloop\n");
// breakouterloop

$i = 0;
$j = 0;
while ($i < 2) {
    while ($j < 2) {
        echo("$i, $j\n");
        $j++;
        if ($i == $j) {break 2;}
    }
    $i++;
    echo("$i\n");
}