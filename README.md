# GLPI API Library for Java

![GLPI banner](https://user-images.githubusercontent.com/29282308/31666160-8ad74b1a-b34b-11e7-839b-043255af4f58.png)

[![License](https://img.shields.io/github/license/glpi-project/java-library-glpi.svg?&label=License)](https://github.com/glpi-project/java-library-glpi/blob/develop/LICENSE.md)
[![Follow twitter](https://img.shields.io/twitter/follow/GLPI_PROJECT.svg?style=social&label=Twitter&style=flat-square)](https://twitter.com/GLPI_PROJECT)
[![Project Status: WIP](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/)
[![Telegram Group](https://img.shields.io/badge/Telegram-Group-blue.svg)](https://t.me/glpien)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)
[![Greenkeeper badge](https://badges.greenkeeper.io/glpi-project/java-library-glpi.svg)](https://greenkeeper.io/)

GLPI (_Gestionnaire Libre de Parc Informatique_) is a free IT Asset Management, issue tracking system and service desk solution. This open source software is written in PHP.

It helps companies to manage their information system, since it's able to build an inventory of all the organization's assets and to manage administrative and financial tasks.

## Table of Contents

* [Synopsis](#synopsis)
* [Build Status](#build-status)
* [Installation](#installation)
* [Compatibility matrix](#matrix)
* [Documentation](#documentation)
* [Versioning](#versioning)
* [Contact](#contact)
* [Professional Services](#professional-services)
* [Contribute](#contribute)
* [Copying](#copying)

## Synopsis

This library created in Java features several functionalities common to all GLPI APIs, for example:

* HTTP transport to APIs.
* Error handling
* Authentication
* JSON parsing
* Custom Item Types
* Media download/upload
* Batching.

You will be able to call all the methods that belong to the [GLPI REST API](https://github.com/glpi-project/glpi/blob/master/apirest.md), for more information visit the [project's website](https://glpi-project.github.io/java-library-glpi/).

## Build Status

|**LTS**|Bleeding Edge|
|:---:|:---:|
|[![Circle CI build](https://circleci.com/gh/glpi-project/java-library-glpi/tree/master.svg?style=svg)](https://circleci.com/gh/glpi-project/java-library-glpi/tree/master)|[![Circle CI build](https://circleci.com/gh/glpi-project/java-library-glpi/tree/develop.svg?style=svg)](https://circleci.com/gh/glpi-project/java-library-glpi/tree/develop)|

## Installation

### External Library Manager

#### Maven

```xml
<dependency>
  <groupId>org.glpi</groupId>
  <artifactId>api</artifactId>
  <version>1.0.0</version>
  <type>pom</type>
</dependency>
```

#### Gradle

```groovy
compile 'org.glpi:api:1.0.0@jar'
```

#### Apache Ivy

```
<dependency org='org.glpi' name='api' rev='1.0.0'>
  <artifact name='api' ext='pom' ></artifact>
</dependency>
```

You can also find us on [**Bintray repository**](https://bintray.com/glpi-project/maven-repository/java-library-glpi).

### Manually

In your ```setting.gradle``` add the following line:

```groovy
include ':my-project', ':java-library-glpi'
```

And in your ```build.gradle``` add:

```groovy
implementation project(':java-library-glpi')
```

## Matrix

|**Library**|1.0.0|
|:----|----|
|**Android API**||

|**Library**|1.0.0|
|:----|----|
|**Java**||

## Documentation

We maintain a detailed documentation of the project on the [website](https://glpi-project.github.io/java-library-glpi/).

## Versioning

In order to provide transparency on our release cycle and to maintain backward compatibility, GLPI is maintained under [the Semantic Versioning guidelines](http://semver.org/). We are committed to following and complying with the rules, the best we can.

See [the release section of our GitHub project](https://github.com/glpi-project/java-library-glpi/releases) for changelogs for each release version. Release announcement posts on [the official Teclib' blog](http://www.teclib-edition.com/en/communities/blog-posts/) contain summaries of the most noteworthy changes made in each release.


## Contact

For notices about major changes and general discussion of GLPI development, subscribe to the [/r/glpi](http://www.reddit.com/r/glpi) subreddit.
You can also chat with us via IRC in [#GLPI on freenode](http://webchat.freenode.net/?channels=GLPI) or [@glpien on Telegram](https://t.me/glpien).

## Contribute

Want to file a bug, contribute some code, or improve documentation? Excellent! Read up on our
guidelines for [contributing](./CONTRIBUTING.md) and then check out one of our issues in the [Issues Dashboard](https://github.com/glpi-project/java-library-glpi/issues).

## Professional Services

The GLPI Network services are available through our [Partner's Network](http://www.teclib-edition.com/en/partners/). We provide special training, bug fixes with editor subscription, contributions for new features, and more.

Obtain a personalized service experience, associated with benefits and opportunities.

## Copying

* **Name**: [GLPI](https://glpi-project.org/) is a registered trademark of [Teclib'](http://www.teclib-edition.com/en/).
* **Code**: you can redistribute it and/or modify
    it under the terms of the GNU General Public License ([GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html)).
* **Documentation**: released under Attribution 4.0 International ([CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)).
