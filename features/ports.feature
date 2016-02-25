@ports
Feature: No open ports
  In order to provide a secure build environment
  I want to make sure there are no open ports.

  Background:
    Given "nmap" is installed

  Scenario: Scan for open ports
    When we scan the site for open ports
    Then we should find only "0" port open
