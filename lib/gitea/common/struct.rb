module Gitea 
  module Common 
    module Struct 
      class Base 
        module AttrHelper
          def attrs(*s)
            define_method(:attrs) {s}
            attr_reader(*s)
          end
        end

        extend AttrHelper

        def initialize(opts = {})
          extra_keys = opts.keys - attrs
          unless extra_keys.empty?
            fail Common::Exception,
                 "Unexpected extra keys: #{extra_keys.join(', ')}"
          end

          attrs.each do |attr|
            instance_variable_set("@#{attr}", opts[attr])
          end
        end

        def to_s
          attrs.map do |attr|
            v = instance_variable_get("@#{attr}")
            "#{attr.to_s}: #{v}"
          end.join(", ")
        end
  
      end # Base
    end # Struct
    
  end # Common
end # Gitea