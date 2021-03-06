module GetYourGuide
  module Parsers
    class Categories < GetYourGuide::Parsers::Default
      def initialize(api_xml)
        super
        @parsed_categories = []
      end

      def process
        @api_xml.xpath('//category').each do |category_xml|
          parsed_category = parse_simgle_category category_xml
          @parsed_categories << parsed_category
        end

        @parsed_categories
      end

      def parse_simgle_category(category_xml)
        create_model('Category', {
          :provider_id => category_xml.attr('id').to_i,
          :name => category_xml.xpath('name').children.inner_text
        })
      end
    end
  end
end
