function alertMe(e, f) {

    toastr.options.positionClass = 'toast-top-center_ok'
    toastr.options.timeOut = '113000'
    switch (f) {

        case "Success":
            toastr.success(e);
            break;
        case "Error":
            toastr.error(e);
            break;
        case "Info":
            toastr.info(e);
            break;
        case "Warning":
            toastr.warning(e);
            break;
    }

};

function alertMeSmall(e, f) {

    toastr.options.positionClass = 'toast-top-left'
    toastr.options.timeOut = '3000'
    switch (f) {

        case "Success":
            toastr.success(e);
            break;
        case "Error":
            toastr.error(e);
            break;
        case "Info":
            toastr.info(e);
            break;
        case "Warning":
            toastr.warning(e);
            break;
    }

};