class Snapshotar::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  desc "This generator creates a snapshotar initializer file with default configuration at config/initializers"
  def create_initializer_file
    # initializer "snapshotar.rb", "puts 'this is the beginning'"
    copy_file 'initializer.rb', File.join('config', 'initializers', 'snapshotar.rb')
  end
end