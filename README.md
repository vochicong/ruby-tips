# Ruby tips

[クラス・インスタンス・属性](class_instance_attributes.ipynb)

- クラスもオブジェクトである
- クラス属性もインスタンス属性も `@` で始まるが、別物
- クラスメソッドを定義するときに `self` を使おう
- インスタンスメソッドの中で `self` を省いた方が読みやすい

[クラスの継承](inheritance.ipynb)

- サブクラスは親からメソッドや属性を受け継ぐ
- インスタンス変数は、その値を初期化（アサイン）されるまで存在せず、参照されたらあたいは nil
- インスタンス変数はそのクラスまたはサブクラスのメソッドから参照できる
- super は現在のメソッドがオーバーライドしているメソッドを呼び出す
- Object クラスから to_s や instance_variables メソッドを継承しているが、to_s をオーバーライドすると綺麗に puts できる

[Mixin](mixin-comparable-enumerable.ipynb)

- `<=>`を定義して、 Comparable モジュールを mixin したら `>, ==, <` が使える。
- `each`メソッドを定義して、`Enumerable`を mixin したら、コレクションに対する様々なメソッドが使えるようになる。

## 参考

- [Ruby リファレンス](https://docs.ruby-lang.org/ja/2.4.0/doc/index.html)
- [Head First Ruby](http://headfirstruby.com/)