class CatWorker
  include Sidekiq::Worker

  def perform(tags, skip, limit)
    data = GetCatData.new(tags: tags, skip: skip, limit: limit).fetch
    random_name = RandomNameGenerator.new
    data[:response].map do |cat|
      existing_cat = Cat.find_by(api_id: cat['id'])
      next if existing_cat

      Cat.create(
        api_id: cat['id'],
        name: random_name.compose(3),
        url: "https://cataas.com/cat/#{cat['id']}"
      )

      puts "New Cat #{cat['id']} join the party!"
    end
  end
end
