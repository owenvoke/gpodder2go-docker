# gpodder2go Docker

[![Latest Version][ico-version]][link-ghcr]
[![Software License][ico-license]](LICENSE.md)
[![Buy us a tree][ico-treeware-gifting]][link-treeware-gifting]

> [!Note]
> gpodder2go now [distributes its own Docker image](https://github.com/oxtyped/gpodder2go#docker).
> Please migrate to using this instead.

## Install

Via Docker

```shell
docker pull ghcr.io/owenvoke/gpodder2go-docker:latest
```

## Usage

```shell
docker run --rm -it -v ./data:/data \
  -p 3005:3005 \
  -e VERIFIER_SECRET_KEY="" \
  -e ADMIN_PASSWORD="" \
  ghcr.io/owenvoke/gpodder2go-docker:latest
```

### Environment Variables

| Name                  | Default         | Description                                                   |
|-----------------------|-----------------|---------------------------------------------------------------|
| `VERIFIER_SECRET_KEY` | `(undefined)`   | The secret key used to sign and verify the session id.        |
| `ADMIN_USERNAME`      | `admin`         | The username of the primary user.                             |
| `ADMIN_EMAIL`         | `admin@local`   | The email address of the primary user.                        |
| `ADMIN_NAME`          | `Administrator` | The display name of the primary user.                         |
| `ADMIN_PASSWORD`      | `(undefined)`   | The password for the primary user.                            |
| `DATABASE_FILE`       | `g2g.db`        | The filename for the database (will be stored under `/data`). |

## Change log

Please see [CHANGELOG](CHANGELOG.md) for more information on what has changed recently.

## Security

If you discover any security related issues, please email security@voke.dev instead of using the issue tracker.

## Credits

- [Owen Voke][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

## Treeware

You're free to use this package, but if it makes it to your production environment you are required to buy the world a tree.

It’s now common knowledge that one of the best tools to tackle the climate crisis and keep our temperatures from rising above 1.5C is to plant trees. If you support this package and contribute to the Treeware forest you’ll be creating employment for local families and restoring wildlife habitats.

You can buy trees [here][link-treeware-gifting].

Read more about Treeware at [treeware.earth][link-treeware].

[ico-version]: https://img.shields.io/github/v/tag/owenvoke/gpodder2go-docker.svg?style=flat-square
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
[ico-treeware-gifting]: https://img.shields.io/badge/Treeware-%F0%9F%8C%B3-lightgreen?style=flat-square

[link-ghcr]: https://github.com/owenvoke/gpodder2go-docker/pkgs/container/gpodder2go-docker
[link-treeware]: https://treeware.earth
[link-treeware-gifting]: https://ecologi.com/owenvoke?gift-trees
[link-author]: https://github.com/owenvoke
[link-contributors]: ../../contributors
