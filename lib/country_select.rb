module ActionView
  module Helpers
    module FormOptionsHelper
      def country_select(object, method, options = {}, html_options = {})
        InstanceTag.new(object, method, self, options.delete(:object)).to_select_tag(Country.to_country_select_collection, options, html_options)
      end
    end
    
    class FormBuilder
      def country_select(method, options = {}, html_options = {})
        @template.country_select(@object_name, method, options.merge(:object => @object), html_options)
      end
    end
  end
end