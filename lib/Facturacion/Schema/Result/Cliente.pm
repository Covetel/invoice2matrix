use utf8;
package Facturacion::Schema::Result::Cliente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::Cliente

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<clientes>

=cut

__PACKAGE__->table("clientes");

=head1 ACCESSORS

=head2 id_cliente

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 nombre_repre

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cedula

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 rif

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 20

=head2 direccion

  data_type: 'text'
  is_nullable: 1

=head2 fecha_inscripcion

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_cliente",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "nombre_repre",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cedula",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "rif",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 20 },
  "direccion",
  { data_type => "text", is_nullable => 1 },
  "fecha_inscripcion",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cliente>

=back

=cut

__PACKAGE__->set_primary_key("id_cliente");

=head1 RELATIONS

=head2 factura_controls

Type: has_many

Related object: L<Facturacion::Schema::Result::FacturaControl>

=cut

__PACKAGE__->has_many(
  "factura_controls",
  "Facturacion::Schema::Result::FacturaControl",
  { "foreign.id_cliente" => "self.id_cliente" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BTRgyNY9/hYdeHNd8MDvIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
