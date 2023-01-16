<?php
class tabung{
    function rumus_tabung($phi,$jari,$tinggi){
        
        $volume= $phi * $jari * $jari * $tinggi;
        $luasp = 2 * $phi * $jari * ($jari*$tinggi);
        $luass = 2 * $phi * $jari * $tinggi;
        echo "Phi : ",$phi;
        echo "<br/>Jari-jari : ",$jari;
        echo "<br/>Tinggi : ",$tinggi ,"<br/>";

        echo "Volume Tabung adalah ", $volume, "<hr/>";
        echo "Luas Permukaan Tabung adalah ", $luasp, "<hr/>";
        echo "Luas Selimut Tabung adalah ", $luass, "<hr>";
    }
}