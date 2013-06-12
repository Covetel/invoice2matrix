use utf8;
package Facturacion::Schema::Result::FacturaItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::FacturaItem

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<factura_items>

=cut

__PACKAGE__->table("factura_items");

=head1 ACCESSORS

=head2 fact_item_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 id_factura

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 item_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 item_cant

  data_type: 'bigint'
  is_nullable: 1

=head2 gravable

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sub_total

  data_type: 'decimal'
  is_nullable: 1
  size: [20,2]

=head2 descripcion

  data_type: 'text'
  is_nullable: 0

=head2 total

  data_type: 'decimal'
  is_nullable: 1
  size: [20,2]

=cut

__PACKAGE__->add_columns(
  "fact_item_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "id_factura",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "item_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "item_cant",
  { data_type => "bigint", is_nullable => 1 },
  "gravable",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "sub_total",
  { data_type => "decimal", is_nullable => 1, size => [20, 2] },
  "descripcion",
  { data_type => "text", is_nullable => 0 },
  "total",
  { data_type => "decimal", is_nullable => 1, size => [20, 2] },
);

=head1 PRIMARY KEY

=over 4

=item * L</fact_item_id>

=item * L</id_factura>

=item * L</item_id>

=back

=cut

__PACKAGE__->set_primary_key("fact_item_id", "id_factura", "item_id");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aW8fYcmeXkdJFf+YQ9LSKA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
