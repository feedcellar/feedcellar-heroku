# feedcellar-heroku

A sample of [Feedcellar][] with [feedcellar-web][] on Heroku. [Feedcellar][] is a full-text searchable RSS feed reader and data store. [feedcellar-web][] is a web interface for [Feedcellar][].

[Feedcellar]:http://myokoym.net/feedcellar/
[feedcellar-web]:https://github.com/feedcellar/feedcellar-web

## Deploy

% git clone https://github.com/feedcellar/feedcellar-heroku.git
% cd feedcellar-heroku
% heroku apps:create --buildpack https://codon-buildpacks.s3.amazonaws.com/buildpacks/groonga/rroonga.tgz
% git push heroku master
% heroku apps:open

## License

CC0 1.0 Universal (Public Domain)
