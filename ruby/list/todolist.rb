
class TodoList
  attr_accessor :a

  def initialize (array)
    @a = array
  end
  def get_items
    p @a
  end
  def add_item(new_item)
    @a.push(new_item)
  end
  def delete_item(deletethis)
    @a.delete(deletethis)
  end
  def get_item(index)
    @a[index]
  end
end