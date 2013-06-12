use utf8;
package Facturacion::Schema::Result::FacturaControl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::FacturaControl

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<factura_control>

=cut

__PACKAGE__->table("factura_control");

=head1 ACCESSORS

=head2 id_factura

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 id_cliente

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 no_control

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 fact_desc

  data_type: 'tinytext'
  is_nullable: 1

=head2 fecha_emision

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 anulada

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 metodo_pago

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_factura",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "id_cliente",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "no_control",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "fact_desc",
  { data_type => "tinytext", is_nullable => 1 },
  "fecha_emision",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "anulada",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "metodo_pago",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_factura>

=back

=cut

__PACKAGE__->set_primary_key("id_factura");

=head1 RELATIONS

=head2 id_cliente

Type: belongs_to

Related object: L<Facturacion::Schema::Result::Cliente>

=cut

__PACKAGE__->belongs_to(
  "id_cliente",
  "Facturacion::Schema::Result::Cliente",
  { id_cliente => "id_cliente" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:46
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yim7ndDVQn93+9wdfPirKQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
