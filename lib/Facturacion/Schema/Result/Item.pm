use utf8;
package Facturacion::Schema::Result::Item;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::Item

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<items>

=cut

__PACKAGE__->table("items");

=head1 ACCESSORS

=head2 item_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 item_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 tipo_item

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 tax_iva

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 item_desc

  data_type: 'tinytext'
  is_nullable: 1

=head2 item_cod

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 precio_unitario

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [10,2]

=cut

__PACKAGE__->add_columns(
  "item_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "item_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "tipo_item",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "tax_iva",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "item_desc",
  { data_type => "tinytext", is_nullable => 1 },
  "item_cod",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "precio_unitario",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [10, 2],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</item_id>

=back

=cut

__PACKAGE__->set_primary_key("item_id");

=head1 RELATIONS

=head2 items_inventarios

Type: has_many

Related object: L<Facturacion::Schema::Result::ItemsInventario>

=cut

__PACKAGE__->has_many(
  "items_inventarios",
  "Facturacion::Schema::Result::ItemsInventario",
  { "foreign.item_id" => "self.item_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7vfIWQPXf6VW6tIQaO37Dg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
