FactoryBot.define do
  factory :song do
    title { "Billie Jean" }
    length { 5 }
    play_count { 0 }
    artist
  end
end
