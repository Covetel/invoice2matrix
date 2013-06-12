use utf8;
package Facturacion::Schema::Result::ItemsInventario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::ItemsInventario

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<items_inventario>

=cut

__PACKAGE__->table("items_inventario");

=head1 ACCESSORS

=head2 id_inventario

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 item_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cantidad

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_inventario",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "item_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cantidad",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_inventario>

=item * L</item_id>

=back

=cut

__PACKAGE__->set_primary_key("id_inventario", "item_id");

=head1 RELATIONS

=head2 item

Type: belongs_to

Related object: L<Facturacion::Schema::Result::Item>

=cut

__PACKAGE__->belongs_to(
  "item",
  "Facturacion::Schema::Result::Item",
  { item_id => "item_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:49
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A3QD/HTBUMsiwVwwMJ32RQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
