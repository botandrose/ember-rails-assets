require "ember/rails/assets/javascript"

module Ember
  module Rails
    module Assets
      class Middleware < Struct.new(:app)
        def call env
          @status, @headers, @body = app.call(env)
          return [@status, @headers, @body] unless html?

          response = Rack::Response.new([], @status, @headers)
          @body.each do |fragment|
            response.write inject(fragment)
          end
          @body.close if @body.respond_to?(:close)

          response.finish
        end

        private

        def html?
          @headers["Content-Type"] =~ /html/
        end

        def inject response
          key = "ASSETS"
          path = ActionView::Base.assets_manifest.path
          markup = Javascript.new(key, path).render
          response.gsub(%r{</head>}, "<script>#{markup}</script></head>")
        end
      end
    end
  end
end

