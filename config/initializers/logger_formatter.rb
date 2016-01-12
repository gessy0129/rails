class Logger
  class Formatter
    def call(severity, time, progname, msg)
      fail if severity !~ /ERROR|WARN|FATAL/ # caller は重いので特定の場合だけ出力
      file_name, line_num = caller.map { |x|
        [Pathname.new($1).relative_path_from(Rails.root).to_s, $2] if x =~ /(.*?):(\d+)/
      }.compact.find { |x|
        x[0] !~ /^(..)\//
      }

      file_name ||= ""
      line_num ||= ""

      format = "%s, [%s#%d] %5s -- %s: %s [%s:%s]\n"
      format % [severity[0..0], format_datetime(time), $$, severity, progname,
        msg2str(msg), file_name, line_num]
    rescue
      format = "%s, [%s#%d] %5s -- %s: %s [:]\n"
      format % [severity[0..0], format_datetime(time), $$, severity, progname,
        msg2str(msg)]
    end
  end
end
