class Bootstrap < Integration
  param :vendor, :boolean, info: 'download a local copy into the repo', blah: 'yep'
  param :responsive, :boolean, info: 'include responsive grid'

  #requires Gems, Stylesheets, Javascripts

  def align
    @vendor = false
    @responsive = false

    (self >> Gems).add 'compass_twitter_bootstrap', group: :assets

    if @vendor
      # TODO different require paths for stylesheet
    else
      (self >> Stylesheets).add_import 'compass_twitter_bootstrap'
      (self >> Stylesheets).add_import 'compass_twitter_bootstrap_responsive' if @responsive
      # TODO js imports - all? or just leave it..
    end
  end

  def execute
    if @vendor
      # TODO pull files in via github
    end
  end

end