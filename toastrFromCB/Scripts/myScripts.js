function alertMe(e, f) {

    toastr.options.positionClass = 'toast-top-center-ok'
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

