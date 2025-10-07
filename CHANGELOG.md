# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v3.6.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.6.0) (2025-10-07)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v3.5.0...v3.6.0)

**Implemented enhancements:**

- Add option to install cronjob for localdb future partitions [\#52](https://github.com/lsst-it/puppet-ccs_database/pull/52) ([glennmorris](https://github.com/glennmorris))

## [v3.5.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.5.0) (2024-09-21)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v3.4.0...v3.5.0)

**Implemented enhancements:**

- Add database setting max\_connections [\#35](https://github.com/lsst-it/puppet-ccs_database/pull/35) ([glennmorris](https://github.com/glennmorris))

## [v3.4.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.4.0) (2024-09-09)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v3.3.0...v3.4.0)

**Implemented enhancements:**

- Install statusPersister properties file [\#32](https://github.com/lsst-it/puppet-ccs_database/pull/32) ([glennmorris](https://github.com/glennmorris))

## [v3.3.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.3.0) (2024-08-05)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v3.2.0...v3.3.0)

**Implemented enhancements:**

- allow puppetlabs/mysql 16.x [\#30](https://github.com/lsst-it/puppet-ccs_database/pull/30) ([jhoblitt](https://github.com/jhoblitt))
- \(puppet-ccs\_database\) add apache license [\#28](https://github.com/lsst-it/puppet-ccs_database/pull/28) ([dtapiacl](https://github.com/dtapiacl))

## [v3.2.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.2.0) (2024-04-02)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v3.1.0...v3.2.0)

**Implemented enhancements:**

- allow password param to be Sensitive [\#26](https://github.com/lsst-it/puppet-ccs_database/pull/26) ([jhoblitt](https://github.com/jhoblitt))

## [v3.1.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.1.0) (2023-08-22)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v3.0.0...v3.1.0)

**Implemented enhancements:**

- allow puppetlabs/mysql 15.x [\#23](https://github.com/lsst-it/puppet-ccs_database/pull/23) ([jhoblitt](https://github.com/jhoblitt))
- allow stdlib 9.x [\#22](https://github.com/lsst-it/puppet-ccs_database/pull/22) ([jhoblitt](https://github.com/jhoblitt))

## [v3.0.0](https://github.com/lsst-it/puppet-ccs_database/tree/v3.0.0) (2023-06-23)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v2.2.0...v3.0.0)

**Breaking changes:**

- \(plumbing\) drop support for puppet6 [\#15](https://github.com/lsst-it/puppet-ccs_database/pull/15) ([jhoblitt](https://github.com/jhoblitt))
- \(metadata\) require puppetlabs/mysql \>= 12.0.2 [\#11](https://github.com/lsst-it/puppet-ccs_database/pull/11) ([glennmorris](https://github.com/glennmorris))

**Implemented enhancements:**

- allow puppetlabs/mysql \<= 15 [\#16](https://github.com/lsst-it/puppet-ccs_database/pull/16) ([jhoblitt](https://github.com/jhoblitt))
- use mariadb 10.5 on rhel8 [\#13](https://github.com/lsst-it/puppet-ccs_database/pull/13) ([glennmorris](https://github.com/glennmorris))

**Closed issues:**

- Use mariadb 10.5 on RHEL8 [\#12](https://github.com/lsst-it/puppet-ccs_database/issues/12)

## [v2.2.0](https://github.com/lsst-it/puppet-ccs_database/tree/v2.2.0) (2023-01-31)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v2.1.2...v2.2.0)

**Implemented enhancements:**

- normalize supported operating systems [\#9](https://github.com/lsst-it/puppet-ccs_database/pull/9) ([jhoblitt](https://github.com/jhoblitt))

## [v2.1.2](https://github.com/lsst-it/puppet-ccs_database/tree/v2.1.2) (2022-08-17)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v2.1.1...v2.1.2)

**Merged pull requests:**

- release 2.1.2 [\#7](https://github.com/lsst-it/puppet-ccs_database/pull/7) ([jhoblitt](https://github.com/jhoblitt))

## [v2.1.1](https://github.com/lsst-it/puppet-ccs_database/tree/v2.1.1) (2022-08-17)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v2.1.0...v2.1.1)

**Merged pull requests:**

- release 2.1.1 [\#6](https://github.com/lsst-it/puppet-ccs_database/pull/6) ([jhoblitt](https://github.com/jhoblitt))
- modulesync 5.3.0 [\#5](https://github.com/lsst-it/puppet-ccs_database/pull/5) ([jhoblitt](https://github.com/jhoblitt))

## [v2.1.0](https://github.com/lsst-it/puppet-ccs_database/tree/v2.1.0) (2022-07-15)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v2.0.0...v2.1.0)

**Merged pull requests:**

- add EL8 support [\#4](https://github.com/lsst-it/puppet-ccs_database/pull/4) ([jhoblitt](https://github.com/jhoblitt))

## [v2.0.0](https://github.com/lsst-it/puppet-ccs_database/tree/v2.0.0) (2022-02-01)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/v0.1.0...v2.0.0)

**Merged pull requests:**

- update to ~ voxpupuli 5.1.0 plumbing [\#3](https://github.com/lsst-it/puppet-ccs_database/pull/3) ([jhoblitt](https://github.com/jhoblitt))
- add pdk mod plumbing [\#2](https://github.com/lsst-it/puppet-ccs_database/pull/2) ([jhoblitt](https://github.com/jhoblitt))

## [v0.1.0](https://github.com/lsst-it/puppet-ccs_database/tree/v0.1.0) (2020-06-11)

[Full Changelog](https://github.com/lsst-it/puppet-ccs_database/compare/e7db374ed912ed31ec5b38b98aacc1e52d87a387...v0.1.0)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
