#
# Cookbook Name:: aws_postgresql
# Recipe:: default
#
# Copyright (C) 2013 Millisami
#

node.set['build_essential']['compiletime'] = true
include_recipe "build-essential"

include_recipe "postgresql::server" # Object-relational SQL database, version 9.x server
include_recipe "postgresql::client" # Front-end programs for PostgreSQL 9.x
include_recipe "postgresql::service" # Internal recipe to declare the system service
include_recipe "postgresql::contrib" # Additional facilities for PostgreSQL

# include_recipe "postgresql::postgis" # Geographic objects support for PostgreSQL 9.x
# include_recipe "postgresql::libpq" # PostgreSQL C client library and header files for libpq5 (PostgreSQL library)
