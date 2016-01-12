# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'gessy0129'
ask :branch, 'master'
set :repo_url, 'https://github.com/gessy0129/gessy0129.git'
set :keep_releases, 5

# Default value for :linked_files is []
set :linked_files, %w(config/database.yml config/secrets.yml)

# Default value for linked_dirs is []
set :linked_dirs, %w(bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads public/xml)

# slack settings
set :slack_webhook, 'https://hooks.slack.com/services/geshi/geshi/geshi'
set :slack_channel, '#general'
set :slack_username, -> { "#{(ENV['USER'] || ENV['USERNAME']).split('_').first}" }
set :slack_icon_url, -> { 'http://sample/sample.gif' }
set :slack_run_starting, -> { false }
set :slack_msg_finished, -> {
  [
    "#{fetch :stage}にリリースしました(#{fetch :branch})",
    ENV['SLACK_MSG'],
    fetch(:git_last_commit_message)
  ].compact.join("\n> ")
}

set :whenever_identifier, -> { "#{fetch(:application)}_#{fetch(:stage)}" }
set :whenever_roles, %w(app db)

namespace :deploy do
  before 'slack:deploy:finished', 'git:last_commit_message'

  task :restart do
    invoke 'unicorn:restart'
  end

  after :finishing, :create_tag do
    run_locally do
      stage = fetch(:stage, false)
      if stage
        name     = (ENV['USER'] || ENV['USERNAME'] || 'deployer').strip
        time     = Time.now.strftime('%Y/%m/%d(%a) %H:%M:%S')
        dir      = fetch(:release_timestamp, false)
        tag_name = "release/#{stage}/#{dir}"

        strategy.git %(tag -a #{tag_name} -m "デプロイタグ 作業者: #{name}, 時刻: #{time}, リリースディレクトリ: #{dir}")
        strategy.git "push #{fetch(:git_remote, 'origin')} #{tag_name}"
      end
    end
  end
end

after 'deploy:publishing', 'deploy:restart'
