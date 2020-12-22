wpscan web service
==================
This is a simple web-interface to run `wpscan`_.


Usage
-----

* ``docker build -t wpscan-web-service .``
* ``docker run --name wpscan-web -p 4567:4567 --rm -d wpscan-web-service:latest``

* ``curl '127.0.0.1:4567/scan-this-wp?addr=https://wordpress.tld&token=your-wpscan-token``

.. _wpscan: https://github.com/wpscanteam/wpscan/

