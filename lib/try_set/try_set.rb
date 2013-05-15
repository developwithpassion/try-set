module TrySet
  def try_set(attribute, value)
    setter = :"#{attribute}="
    send(setter, value) if respond_to? setter
  end
end
