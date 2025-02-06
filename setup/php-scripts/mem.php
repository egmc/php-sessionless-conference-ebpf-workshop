<?php
// Memcachedのインスタンスを作成
$memcached = new Memcached();

// Memcachedサーバーに接続 (サーバーのIPアドレスとポート番号を指定)
$memcached->addServer('127.0.0.1', 11211);

// キーとバリューをセット (有効期限を60秒に設定)
$key = "example_key";
$value = "example_value";
$expiration = 60; // 60秒


for ($i=1; $i <= 5000; $i++) {
    
    $value = str_repeat('x', $i);
    if ($memcached->set($key . $i, $value, $expiration)) {
        echo "キーとバリューが正常にセットされました。";
    } else {
        echo "キーとバリューのセットに失敗しました。";
    }
}




// データを取得して確認
//$retrievedValue = $memcached->get($key);
//if ($retrievedValue) {
//    echo "取得されたバリュー: " . $retrievedValue;
//} else {
//    echo "データの取得に失敗しました。";
//}


