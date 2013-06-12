#!/usr/bin/env perl
use Template;

my $tt = Template->new({
		       INCLUDE_PATH => 'tt2/',
		       INTERPOLATE => 1,
}) || die "$Template::ERROR\n";

my $vars = {
	    invoice => {
			id => 234,
			date => '04-06-2013',
			client => {
				   name => 'Compañía Anónima de Teléfonos de Venezuela',
				   id => 'J-29532381-6',
				  },
			paymentform => 'CONTADO',
			sub_total => '123.321,00',
			iva => 0,
			total => '123.321,00'
		       },
};

my @items;

push @items,{
	     qty => 1,
	     desc => 'Esto corresponde la descripción del servicio, por ahora es un tanto larga, pero puede ser un tanto corta, solo son pruebas',
	     unit_price => '123.321,00',
	     total_price => '123.321,00',
};

$vars->{'invoice'}->{'items'} = \@items;

$tt->process('invoice.tt2', $vars, <STDOUT>);
