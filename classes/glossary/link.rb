module Glossary
  class Link
    attr_reader :url, :title, :description

    def initialize url, title=nil, description=nil
      @url = url
      @title = title
      @description = description
    end
  end
end
