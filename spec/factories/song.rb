FactoryBot.define do
  factory :song do
    sequence(:title) { |n| "Title #{n}"}
    # title { "Billie Jean" }
    length { 5 }
    play_count { 0 }
    artist
  end
end
