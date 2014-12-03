require "ember/rails/assets/javascript"

module Ember
  module Rails
    module Assets
      module Helper
        def assets_javascript_tag key
          javascript_tag do
            raw Javascript.new(key, assets_manifest.path).render
          end
        end
      end
    end
  end
end

