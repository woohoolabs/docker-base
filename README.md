# Woohoo Labs. Docker Base Images

[![Join the chat at https://gitter.im/woohoolabs/docker-base](https://badges.gitter.im/woohoolabs/docker-base.svg)](https://gitter.im/woohoolabs/docker-base?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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

## Credits

- [Máté Kocsis][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see the [License File](LICENSE.md) for more information.

[link-author]: https://github.com/kocsismate
[link-contributors]: ../../contributors
