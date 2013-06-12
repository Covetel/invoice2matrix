use utf8;
package Facturacion::Schema::Result::Usuario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Facturacion::Schema::Result::Usuario

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<usuarios>

=cut

__PACKAGE__->table("usuarios");

=head1 ACCESSORS

=head2 id_usuarios

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 passwd

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 70

=head2 nivel

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 descripcion

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=cut

__PACKAGE__->add_columns(
  "id_usuarios",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "passwd",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 70 },
  "nivel",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "descripcion",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_usuarios>

=back

=cut

__PACKAGE__->set_primary_key("id_usuarios");

=head1 UNIQUE CONSTRAINTS

=head2 C<nombre>

=over 4

=item * L</nombre>

=back

=cut

__PACKAGE__->add_unique_constraint("nombre", ["nombre"]);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-06-11 22:51:52
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Jy+CNuUlAxRxNxT/g+46uQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
