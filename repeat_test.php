<?php

for($i=1; $i<=100; $i++) {
	$testId = sprintf("%03d", $i);
    $text = "   func test$testId() {
        runtTheTest()
    }\n\n";

    echo $text;
}
