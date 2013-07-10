#!/usr/bin/env perl
use Template;
use strict;
use warnings;
use lib qw(lib);
use Facturacion::Schema;
use Number::Format;

my $tt = Template->new({
		       INCLUDE_PATH => '../tt2/',
		       INTERPOLATE => 1,
}) || die "$Template::ERROR\n";

my $id = shift || die "Must indicate the invoice number";

my $db =Facturacion::Schema->connect('dbi:mysql:dbname=facturacion;host=www.covetel.com.ve', 'USER', 'PASSWORD') || die $@;

my @factura_items = $db->resultset('FacturaItem')->search({'id_factura' => $id});

my @items;

my $tot;
my $iva = 0;

foreach my $item (@factura_items) {
    push  @items,{
        qty => $item->item_cant,
        desc => $item->descripcion,
        unit_price => &number_format($item->sub_total),
        total_price => &number_format($item->total),
    };
    $tot += $item->total;
}

my @factura = $db->resultset('FacturaControl')->find({'id_factura' => $id});

my $vars;

foreach my $factura (@factura) {

    my $payment_form;
    if ($factura->metodo_pago == 0){
        $payment_form = "CONTADO";
    }else{
        $payment_form= "CREDITO";
    }

    my $subtotal;

    $vars = {
       invoice => {
           id => $id,
           date => &date_format($factura->fecha_emision),
           client => {
                name => $factura->id_cliente->nombre,
                id => $factura->id_cliente->rif,
           },
           paymentform => $payment_form,
           sub_total => &number_format($tot),
           iva => $iva,
           total => &number_format($tot+$iva),
       },
    };
}

$vars->{'invoice'}->{'items'} = \@items;

$tt->process('invoice.tt2', $vars) || die $tt->error(), "\n";

sub number_format {
    my $n = shift;
    my $format = new Number::Format(
        THOUSANDS_SEP   => '.',
        DECIMAL_POINT   => ',',
    );

    return$format->format_number($n);
}

sub date_format {
    my $d = shift;
    my $year = substr($d, 0, 4);
    my $month = substr($d, 5, 2);
    my $day = substr($d, 8, 2);

    return $day."-".$month."-".$year;
}
