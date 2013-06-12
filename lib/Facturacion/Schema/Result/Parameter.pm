use utf8;
package Facturacion::Schema::Result::Parameter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::Parameter

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<parameters>

=cut

__PACKAGE__->table("parameters");

=head1 ACCESSORS

=head2 id_parameter

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 param_name

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 value

  data_type: 'varchar'
  is_nullable: 1
  size: 75

=head2 enabled

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_parameter",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "param_name",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "value",
  { data_type => "varchar", is_nullable => 1, size => 75 },
  "enabled",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parameter>

=back

=cut

__PACKAGE__->set_primary_key("id_parameter");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:50
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RUHX3c1OZm7G8G1aS01YrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
