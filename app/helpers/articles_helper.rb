module ArticlesHelper
  def articles_is_end?(articles)
    articles.options[:skip].to_i + articles.to_a.count >= articles.count
  end

  def article_format_body(text)
    sanitize text, :tags => %w(p br img h1 h2 h3 h4 blockquote pre code b i strike u a ul ol li), :attributes => %w(href src)
  end
end