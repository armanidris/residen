$(function () {
    $('.js-basic-example').DataTable({
        responsive: true
    });
  
    $('.js-basic-nopages').DataTable({
        responsive: true,
        paginate : false
    });

    //Exportable table
    $('.js-exportable').DataTable({
        dom: 'Bfrtip',
        responsive: true,
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
});