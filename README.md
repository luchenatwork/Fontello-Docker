# Fontello-Docker
Fontello server docker image based on Ubuntu

# Docker Hub Repository
[luchenatwork/fontello-server](https://hub.docker.com/r/luchenatwork/fontello-server)

# Supported Tags
-   [`latest`, `8.0.0`,  `Fontello-8.0.0_Ubuntu-18.04_NodeJS-10.x`](https://github.com/luchenatwork/Fontello-Docker/blob/master/8.0.0/Dockerfile)

# Featured Repos
[Fontello-Docker](https://github.com/luchenatwork/Fontello-Docker): Fontello Server Dockerfile

# About Fontello
This tool lets you combine icon webfonts for your own project. With fontello you can:
1.  shrink glyph collections, minimizing font size
2.  merge symbols from several fonts into a single file
3.  access large sets of professional-grade open source icons

# About this image
This image is built from official Ubuntu docker image, NodeJS official binary distribution and Fontello official repos.

The version number is the same as the version number of Fontello official release used in the docker image.

# How to use this image
docker run -t -p 3000:3000/tcp luchenatwork/fontello-server:latest

Open browser page http://localhost:3000

## Notes:
Make sure to disable hinting after open browser page http://localhost:3000.

![Open Advanced Font Settings](https://raw.githubusercontent.com/luchenatwork/Fontello-Docker/master/doc/AdvancedFontSettings.png)

![Uncheck Hinting Option](https://raw.githubusercontent.com/luchenatwork/Fontello-Docker/master/doc/UncheckHinting.png)

# Command line interface for Fontello
If you want to run batch font generation, give a try [Fontello-Batch-CLI](https://www.npmjs.com/package/fontello-batch-cli).

# Related Repos
Fontello:
-   [Fontello](https://github.com/fontello/fontello): Fontello Official Repo

Ubuntu Docker Hub
- [Ubuntu Docker Hub](https://hub.docker.com/_/ubuntu?tab=description): Ubuntu Official Docker Images

NodeSource Node.js Binary Distributions
- [NodeSource Node.js Binary Distributions](https://github.com/nodesource/distributions): Official Node.js binary distributions
