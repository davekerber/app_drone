module AppDrone
class HamlView < Drone
  desc "An alternative to SlimView. Do not install both."

  category :views
  depends_on :bundle
  pairs_with :gon

  def align
    bundle.add 'haml-rails'
  end

  def execute
    do! :application_haml
  end
end
end
