### 本文
* モック: テストダブルの一種。自動テストで実際のオブジェクトを置き換えて使う、ダミーのオブジェクト。
* 依存製の注入(DI, Dependency Injection): テスト対象のオブジェクトのコンストラクタを使って、モック化したいオブジェクトを入れ替える。
* 厳密なモック化、緩やかなモック化

### Q&A
* Q1 テストしたいメソッドがパブリックでない場合は?
* A1 パブリックなインターフェイスを通して、プライベートメソッドをテスト出来ないか考える。

* Q2 テスターが覚えておくことは？
* A2 開発者が結合度を気にするのと同じ様に、テストコードでも結合度を気にする。UIテストはUIが落ち着くまで書かない方がいい。

### まとめ
* ユニットテストでは、必ずしもモックを使うのではなく、可能ならば本物のオブジェクトを使う。
* モックは便利だが、乱用すると泥沼に。。
* ユニットテストでは、可能な限り内部の機構ではなく、外に向けた振る舞いにフォーカスする。
