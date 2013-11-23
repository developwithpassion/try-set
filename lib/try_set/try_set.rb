module TrySet
  def try_set(attribute, value)
    setter = :"#{attribute}="
    send(setter, value) if respond_to?(setter, include_all=true)
  end
end
