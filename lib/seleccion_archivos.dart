Container(
  width: double.infinity,
  height: 1024 * fem,
  decoration: BoxDecoration(
    color: Color(0xffffffff),
  ),
  child: Container(
    padding: EdgeInsets.fromLTRB(160 * fem, 76 * fem, 160 * fem, 87 * fem),
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          '[URL de la imagen]',
        ),
      ),
    ),
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 30 * fem,
          sigmaY: 30 * fem,
        ),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 7.5 * fem,
            sigmaY: 7.5 * fem,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(275 * fem, 0 * fem, 274 * fem, 68 * fem),
                width: double.infinity,
                height: 100 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * fem,
                      top: 17 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 571 * fem,
                          height: 83 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30 * fem),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 35 * fem,
                      top: 28 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 242 * fem,
                            height: 42 * fem,
                            child: Text(
                              'Bienvenido a ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Archivo',
                                fontSize: 38 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.0875 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 286 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 246 * fem,
                            height: 70 * fem,
                            child: Text(
                              'NeuroSight',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Carter One',
                                fontSize: 45 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.54 * ffem / fem,
                                color: Color(0xff0896c3),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(68 * fem, 126 * fem, 68 * fem, 101 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25 * fem),
                  gradient: LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0xff8583f0), Color(0xff09083e)],
                    stops: <double>[0, 0.667],
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 438 * fem,
                    height: 466 * fem,
                    child: Image.network(
                      '[URL de la imagen]',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
);
