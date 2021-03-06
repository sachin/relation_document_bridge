FactoryBot.define do
  factory :user do
    name { "John" }
    factory :user_with_articles do
      transient do
        articles_count { 5 }
      end

      transient do
        articles_factory {:article}
      end

      after(:create) do |user, evaluator|
        create_list(evaluator.articles_factory, evaluator.articles_count, user: user)
      end
    end
  end

  factory :article do
    title { "Article title" }
    user

    factory :article_with_comments do
      transient do
        comments_count { 5 }
      end

      after(:create) do |article, evaluator|
        create_list(:comment, evaluator.comments_count, article: article)
      end
    end
  end

  factory :comment do
    comment { "Comment on article" }
    article
    association :commenter, factory: :user
  end

  factory :magazine do
    name { "Magazine name" }

    factory :magazine_with_posts do
      transient do
        posts_count { 5 }
      end

      after(:create) do |magazine, evaluator|
        create_list(:post, evaluator.posts_count, magazine: magazine)
      end
    end
  end

  factory :post do
    title { "Post title"}
    magazine
  end
end
