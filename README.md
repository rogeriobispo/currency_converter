# README

## Motivation
    An easy currency converter
![Screenshot](https://raw.githubusercontent.com/rogeriobispo/currency_converter/8645a6e1666569ce70eb329c18d895ae73a113eb/public/currencyConverter.png)

## Continuos Integration Status
[ ![Codeship Status for rogeriobispo/currency_converter](https://app.codeship.com/projects/ab4eeda0-e3e8-0135-5b30-4235b83c2a89/status?branch=master)](https://app.codeship.com/projects/268684)

## Requiriments
    * Ruby Version: 2.4.1
    * Rails 5.0.6
    * PostGres 9.5

## Optional
    * docker
    * docker-compose

## Setup
    * git@github.com:rogeriobispo/currency_converter.git
    * bundle install
    * rails db:create
    * rails db:migrate
    * puma -C config/puma.rb

## Docker Setup
    * docker-compose build
    * docker-compose run --rm website bin/setup
    * docker-compose up

## Server up
    * puma -C config/puma.rb

## Database creation
    * rails db:create

## DataBase Initialization
    * rails db:create
    * rails db:migrate

## How to run Test Suite
    * rspec -fd

## App Link

[Roger Currency Converter](http://rogerexchangecurrency.herokuapp.com/)
