class Item
  attr_acesssor :archived, :publish_date, :genre, :author, :source, :label

  def initialize(archived, publish_date)
    @id = generate_unique_id
    @archived = archived
    @publish_date = publish_date
    @genre = genre
    @author = author
    @source = source
    @label = label
  end

  def generate_unique_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(101_000)
    "#{timestamp}#{random_number}"
  end

  def move_to_archive
    @archived = can_be_archived
  end

  private

  def can_be_archived?
    (Time.new.year - @publish_date.year) > 10
  end
end
