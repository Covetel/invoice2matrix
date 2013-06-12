use utf8;
package Facturacion::Schema::Result::AdditionalData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::AdditionalData

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<additional_data>

=cut

__PACKAGE__->table("additional_data");

=head1 ACCESSORS

=head2 id_factu

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 no_factura

  data_type: 'bigint'
  is_nullable: 0

=head2 ord_serv

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 pos

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 n_acep

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 ord_gast

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 solped

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 n_doc

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "id_factu",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "no_factura",
  { data_type => "bigint", is_nullable => 0 },
  "ord_serv",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "pos",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "n_acep",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "ord_gast",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "solped",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "n_doc",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_factu>

=back

=cut

__PACKAGE__->set_primary_key("id_factu");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:I2hVzMd79resB1Ub6EH2GA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
