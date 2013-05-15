# try_set

The `try_set` library allows for attempts to be made to trigger setter style methods on objects. Triggering a try_set method will invoke the method if it exists on the target, and it will not fail if the method does not exist on the target, and it will not fail if the method does not exist on the target

## Status

**Unreleased**

NOTE: Dependencies are linked locally in the development environment via the [`path_gem` library](https://github.com/Sans/path-gem). Dependencies aren't installed by RubyGems, and some dependencies aren't yet published.

## Usage

Include TrySet and use the try_set method to trigger setter methods on the receiver.

```ruby
class SomeThing
  include TrySet

  def initialize
    @some_value = 42
  end

  def some_value=(new_value)
    @some_value = new_value
  end
end

obj = SomeThing.new
obj.try_set(:some_value, 33) #this works
obj.try_set(:some_non_existant_value, 42) #this does not cause a failure
```

## License

try_set is released under the [MIT License](http://www.opensource.org/licenses/MIT).
