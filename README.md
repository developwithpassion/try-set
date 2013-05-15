# try_set

The `try_set` library allows for attempts to be made to trigger setter style methods on objects. Triggering a try_set method will invoke the method if it exists on the target, and it will not fail if the method does not exist on the target, and it will not fail if the method does not exist on the target

## Status

**Unreleased**

NOTE: Dependencies are linked locally in the development environment via the [`path_gem` library](https://github.com/Sans/path-gem). Dependencies aren't installed by RubyGems, and some dependencies aren't yet published.

## Usage

Include initializer and use the initializer macro to define the initializer method and attributes.

```ruby
class SomeThing
  include try_set

end
```

```

## License

try_set is released under the [MIT License](http://www.opensource.org/licenses/MIT).
