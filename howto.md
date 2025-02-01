php-sessionless-conference-ebpf-workshop
---


## eBPFの概要説明

 - 概要説明している間にパッケージインストール済ませたい
 - スライド
   - とりあえずこれ https://speakerdeck.com/egmc/phpapurikesiyonniokeruebpfnoshi-isuo

##  環境セットアップ(30m)
  - パッケージインストール
  - eBPF exporterバイナリ配置
  - レポジトリclone
  - config生成
    - apacheの環境変数
    - Prometheus
    - eBPF Exporter
  - 連携設定
    - Grafana
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
