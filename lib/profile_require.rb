module Kernel
  if ENV["PROFILE_REQUIRE"] 
    unless defined?(profile_require)
      alias profile_require require

      def require path
        STDERR.puts "require #{path} started"
        time_before_require = Time.now
        profile_require path
      ensure
        STDERR.puts "require #{path}: #{Time.now-time_before_require} seconds"
      end
    end
  end
end

