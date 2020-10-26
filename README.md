



## Ruby Environnment and prerequisites

1. Be sure you have `rbenv` installed
2. Run `rbenv init`
3. (Optional) Verify with `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash`
4. Run:
```bash
RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl" rbenv install -v 2.7.1
rbenv global 2.7.1
ruby -v # Should print 2.7.1
gem install --user-install bundler jekyll
bundle install
```

## Jekyll

### Build from scratch

```
rm -Rf _site && bundle exec jekyll build
```

## Hot reload

```
bundle exec jekyll serve 
```


