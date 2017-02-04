<?php

for($i=1; $i<=100; $i++) {
    $text = "   func test$i() {
        runtTheTest()
    }\n\n";

    echo $text;
}
