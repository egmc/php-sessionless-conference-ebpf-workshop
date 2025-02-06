php-sessionless-conference-ebpf-workshop
---


## eBPFの概要説明

 - 概要説明している間にパッケージインストール済ませたい
 - スライド
   - とりあえずこれ https://speakerdeck.com/egmc/phpapurikesiyonniokeruebpfnoshi-isuo

##  環境セットアップ(30m)

- sudoできるユーザーなら良いですが、便宜上デフォルトのubuntuユーザーを想定、必要な部分は適宜読み替えで
- ターミナルをいくつか切り替えるのでscreen/tmux等必要に応じてよしなにご利用ください

### イメージ確認
 - ubuntu 22.04 jammyを使用
 - ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20250112
    - ap-northeast-1の場合 ami-08f191dd81ec3a3de
    - Lightsailの場合 Linux/Unix -> OS only -> Ubuntu 22.04 LTS
    - ※ ローカルでのDockerイメージは利用不可です

### port開放

- 3000 (Grafana)
- 80(apache/php)

以下は公開の必要なし、使用ポート

- 9090(Prometheus)
- xxx (eBPF Exporter)


### パッケージインストール

```
sudo setup/01-packages.sh
```

### Apache/PHPセットアップ

- config配置
- apacheの環境変数設定

### ebpf_exporterセットアップ

- レポジトリclone
- ebpf_exporterバイナリ配置

### Prometheusセットアップ

- バイナリ配置
- スクレイプ設定配置

### Grafanaセットアップ

```
sudo setup/02-grafana.sh
```

- 起動後、http://{Public IP}:3000 へアクセス
- admin/adminでログイン
- 任意のパスワードを設定
- データソース設定
- サンプルダッシュボード取り込み

## bpftraceを利用したトレース体験(10m)

  - TBDサンプルコマンド

## ebpf exporterを利用した可視化の実装(40m)

 - サンプルのビルド
 - トレース実行
   - ログの確認
   - BPF_MAPの確認
   - exporter出力の確認
   - Grafanaのクエリ結果確認
   - 余力があればコードを変更

## ユースケースについてのディスカッション（10m）

 - ディスカッションする
