#!/usr/bin/env perl
use strict;
use warnings;
use lib qw(lib);

use Facturacion::Schema;

use Data::Dumper;

my $id = shift || "Must indicate the invoice number";

my $db =Facturacion::Schema->connect('dbi:mysql:dbname=facturacion;host=www.covetel.com.ve', 'USER', 'PASSWORD') || die $@;

my @factura_items = $db->resultset('FacturaItem')->search({'id_factura' => $id});

my @items;

my $tot;
my $iva = 0;

foreach my $item (@factura_items) {
    push  @items,{
        qty => $item->item_cant,
        desc => $item->descripcion,
        unit_price => $item->sub_total,
        total_price => $item->total,
    };
    $tot +=  $item->total;
}

my @factura = $db->resultset('FacturaControl')->find({'id_factura' => $id});

my $vars;

foreach my $factura (@factura) {
    $vars = {
       invoice => {
           id => $id,
           date => $factura->fecha_emision,
           client => {
                name => $factura->id_cliente->nombre,
                id => $factura->id_cliente->rif,
           },
           paymentform => $factura->metodo_pago,
           sub_total => $tot,
           iva => $iva,
           total => $tot+$iva, 
       },
    };
}

print Dumper(@items);
print Dumper($vars);
