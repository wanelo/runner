Runner
======

Run arbitrary Rails code.

## Usage

```bash
bundle exec run 'MyClass.run'
```

### Environment

The following environment variables will dictate how the runner or Rails
will behave:

* `PIDFILE` — `/var/run/my_class.pid` — writes a pidfile with the current process id
* `LOGFILE` — `/var/log/my_class.log` — Updates `Rails.logger` to write to this file instead of the default

## Contributing

1. Fork it ( https://github.com/[my-github-username]/runner/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
