use utf8;
package Facturacion::Schema::Result::Factura;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::Factura

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<factura>

=cut

__PACKAGE__->table("factura");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 nombre

  data_type: 'tinytext'
  is_nullable: 0

=head2 cantidad

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 punitario

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [10,2]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "nombre",
  { data_type => "tinytext", is_nullable => 0 },
  "cantidad",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "punitario",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [10, 2],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pEwkHS7+k0QsQ620eeeiBA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
