FROM ruby
RUN mkdir -p /app
WORKDIR /app
ADD Gemfile /app/
RUN bundle install --quiet
ADD . /app

EXPOSE 9292
CMD ["bundle", "exec", "puma"]
