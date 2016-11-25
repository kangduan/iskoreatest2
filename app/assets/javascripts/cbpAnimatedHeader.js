function scrollPage() {
    var sy = scrollY();
    if ( sy >= changeHeaderOn ) {
        classie.add( header, 'navbar-shrink' );
    }
    else {
        classie.remove( header, 'navbar-shrink' );
    }
    didScroll = false;
}
