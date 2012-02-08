module Kernel
  alias profile_require require

  def require path
    time_before_require = Time.now
    profile_require path
  ensure
    STDERR.puts "require #{path}: #{Time.now-time_before_require} seconds"
  end
end

