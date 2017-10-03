<?php

/* ポルトガル リスボンの日の出時刻を計算する
緯度: 北緯 38.4
経度: 西経 9
天頂 ~= 90
時差: +1 GMT
*/

echo date("D M d Y"). ', sunrise time : ' .date_sunrise(time(), SUNFUNCS_RET_STRING, 34.19, 134.10, 90, 9);

?>