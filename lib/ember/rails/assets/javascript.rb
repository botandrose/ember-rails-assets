require "json"
require "active_support/core_ext"

module Ember
  module Rails
    module Assets
      class Javascript < Struct.new(:key, :assets_manifest_path)
        def render
          <<-JS.strip_heredoc
            window.#{key} = {
              prefix: "/assets/",
              path: function(name) {
                return this.prefix + (this.assets[name] || name);
              },
              assets: #{JSON.dump(assets)}
            };
          JS
        end

        private

        def assets
          json = File.read(assets_manifest_path)
          JSON.load(json)["assets"]
        rescue Errno::ENOENT
          {}
        end
      end
    end
  end
end

