<<<<<<< HEAD
class ApplicationController < ActionController::API
=======
class ApplicationController < ActionController::Base
  include Pagy::Method

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
>>>>>>> f1a91b8 (feat: Movement model created and configured the production db credentials)
end
