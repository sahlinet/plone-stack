# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.3] 2018-10-30
### Added
### 
- Start plone in development mode if DEBUG variable is true [philipsahli]

## [0.2.2]
### Added
### 
- Add proxy-body-size with 50m default value to ingress. [philipsahli]

## [0.2.1]
### Changed
### 
- Imporove build pipeline. [philipsahli]

## [0.2.0]
### Fixed
- Make RONTEND_SCHEME and FRONTEND_PORT configurable. [philipsahli]

## [0.1.21]
### Fixed
- Add variables FRONTEND_PORT and FRONTEND_SCHEME. [@philipsahli]

## [0.1.13] - 2018-10-14
### Fixed
- DB Volume not created
### Changed
- Set client_max_body_size to 30M

## [0.1.12] - 2018-10-07
### Added
- Add rapido.plone to docker image [@philipsahli].
### Changed
- Build all branches on CircleCI [@philipsahli].

## [0.1.11] - 2018-09-30
### Added
- Allow multiple hosts [@philipsahli].
