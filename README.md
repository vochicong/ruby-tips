# Ruby tips

## [クラス・インスタンス・属性](notebooks/class_instance_attributes.ipynb)

- クラスもオブジェクトである
- クラス属性もインスタンス属性も `@` で始まるが、別物
- クラスメソッドを定義するときに `self` を使おう
- インスタンスメソッドの中では `self` が現在のオブジェクトを指すが、
省けるところでは省いた方が読みやすい

## [クラスの継承](notebooks/inheritance.ipynb)

- サブクラスは親からメソッドや属性を受け継ぐ
- インスタンス変数は、その値を初期化（アサイン）されるまで存在せず、参照されたらあたいは nil
- インスタンス変数はそのクラスまたはサブクラスのメソッドから参照できる
- super は現在のメソッドがオーバーライドしているメソッドを呼び出す
- Object クラスから to_s や instance_variables メソッドを継承しているが、to_s をオーバーライドすると綺麗に puts できる

## [ブロックの戻り値](notebooks/block_return_values.ipynb)

- メソッドにブロックを渡すことによって、指示を与えられる

## [Mixin](notebooks/mixin-comparable-enumerable.ipynb)

- `<=>`を定義して、 Comparable モジュールを mixin したら `>, ==, <` が使える。
- `each`メソッドを定義して、`Enumerable`を mixin したら、コレクションに対する様々なメソッドが使えるようになる。

## [camelCaseとsnake_caseの変換](notebooks/json_camel_snake_case.ipynb)

JSON request params key を camelCase から snake_case への変換は、
スタンダードなやり方が確定していなさそうだが、選択肢としては

- initializer で deep_transform_keys 変換
- before_action で transform_keys 変換
- その他、gem での対応

## [Rubyの`&.method` vs Railsの`try(:method)`](notebooks/ruby_&_vs_rails_try.ipynb)

- xにhogeメソッドがあれば、 x&.hoge と x.try(:hoge) は x.hoge と同じ
- xにhogeメソッドがなかったら
  - xがnilの場合、x&.hogeもx.try(:hoge)もnilになる
  - xがnilでない場合、x&.hogeはエラーとなる一方、x.try(:hoge)はnilになる

## 参考

- [Ruby リファレンス](https://docs.ruby-lang.org/ja/2.4.0/doc/index.html)
- [Head First Ruby](http://headfirstruby.com/)
