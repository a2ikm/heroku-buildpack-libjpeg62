Heroku Buildpack: libjpeg62
======================

This is a Heroku Buildpack to use [libjpeg 62](http://www.ijg.org/) (6b).


Usage
-----

With [heroku-buildpack-multi](https://github.com/heroku/heroku-buildpack-multi),

```
$ heroku config:add BUILDPACK_URL=https://github.com/heroku/heroku-buildpack-multi.git

$ cat .buildpacks
https://github.com/heroku/heroku-buildpack-ruby.git
https://github.com/a2ikm/heroku-buildpack-libjpeg62.git
```
