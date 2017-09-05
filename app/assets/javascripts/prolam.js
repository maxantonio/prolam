$(document).on('turbolinks:load',function(){
    $(".show-modal").click(function (e) {
        console.log("mosotrando el resultado de dar click en ",$(e));
        var url = $(this).attr("data-urlload")
        $("#modalBody").load(url);

    })
});
