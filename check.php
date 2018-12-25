<?php
$ping = shell_exec('ping -c1 google.com');
$connected = @fsockopen("www.google.com", 80);
if ($connected) {
    $is_conn = true;
    fclose($connected);
} else {
    $is_conn = false;
}
if (!$is_conn) {
    shell_exec('pkill -o chromium');
} else {
    $output = shell_exec('/bin/ps aux | grep lib/chromium-browser');
    $len = strlen($output);
    if ($len > 400) {
        echo 'on';
    } else {
        shell_exec('sh /home/monitor/kiosk.sh');
    }
}

?>