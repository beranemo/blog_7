namespace :dev do
  task fake: :environment do
    Article.destroy_all

    150.times do |i|
      Article.create!(
        title: FFaker::Name.name,
        body: FFaker::Lorem.paragraph,
        status: "public"
      )
    end
    puts "have created fake articles"
    puts "now you have #{Article.count} articles data"
  end
end
