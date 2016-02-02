$(document).on('page:change', function(){
	Morris.Donut({
		element: 'distribucion-agencia',
		data: [
			{label: 'Parque de Berrio', value: 50},
			{label: 'Punto Clave', value: 30},
			{label: 'Gran Plaza', value: 5}
		],
		colors: ['#256c3c', '#a2673a', '#286469']
	});	

	Morris.Donut({
		element: 'distribucion-estado',
		data: [
			{ label: 'Recepción', value: 100 },
			{ label: 'Atención', value: 200 },
			{ label: 'Atendido', value: 500 }
		]
	});

	Morris.Line({
		element: 'promedio-espera',
		data: [
			{ day: '2016-01-01', value: 3 },
		    { day: '2016-01-02', value: 4 },
		    { day: '2016-01-03', value: 5 },
		    { day: '2016-01-04', value: 6 },
		    { day: '2016-01-05', value: 7 },
		    { day: '2016-01-06', value: 8 }
		],
		xkey: 'day',
		ykeys: ['value'],
		labels: ['value']
	});

	Morris.Line({
		element: 'promedio-atencion',
		data: [
			{ day: '2016-01-01', value: 3 },
		    { day: '2016-01-02', value: 4 },
		    { day: '2016-01-03', value: 5 },
		    { day: '2016-01-04', value: 6 },
		    { day: '2016-01-05', value: 7 },
		    { day: '2016-01-06', value: 8 }
		],
		xkey: 'day',
		ykeys: ['value'],
		labels: ['value']
	});
});


