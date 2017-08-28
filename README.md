# Woohoo Labs. Docker Base Images

## Introduction

This repo contains scripts necessary for building the following base images:

- [PHP][link-php-image]: [![PHP Pulls][ico-php-pulls]][link-php-image]
- [Beanstalkd][link-beanstalkd-image]: [![Beanstalkd Pulls][ico-beanstalkd-pulls]][link-beanstalkd-image]
- [Gulp][link-gulp-image]: [![Gulp Pulls][ico-gulp-pulls]][link-gulp-image]

## Usage

You can use the `build.sh` script in order to build images by passing the image name and version numbers as arguments.
For example

```bash
./build.sh php 4 0 0
```

The script will then build the "woohoolabs/php:4.0.0" image. If you are satisfied with the result, you can choose to
publish it to Docker Hub by simply answering "y" to the question.

## Change Log

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed recently.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

## Support

Please see [SUPPORT](SUPPORT.md) for details.

## Credits

- [Máté Kocsis][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see the [License File](LICENSE.md) for more information.

[ico-php-pulls]: https://img.shields.io/docker/pulls/woohoolabs/php.svg
[ico-beanstalkd-pulls]: https://img.shields.io/docker/pulls/woohoolabs/beanstalkd.svg
[ico-gulp-pulls]: https://img.shields.io/docker/pulls/woohoolabs/gulp.svg

[link-php-image]: https://hub.docker.com/r/woohoolabs/php/
[link-beanstalkd-image]: https://hub.docker.com/r/woohoolabs/beanstalkd/
[link-gulp-image]: https://hub.docker.com/r/woohoolabs/gulp/
[link-author]: https://github.com/kocsismate
[link-contributors]: ../../contributors
