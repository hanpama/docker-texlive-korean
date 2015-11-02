Docker-Texlive-Korean
=====================

한국어의 TeX 작업을 위한 Dockerfile
Dockerfile for documentation works in Korean

build.py를 프로젝트에 포함하여 사용하면 간편합니다.

.. code-block::

   $ ./build.py latexpdf

kotex를 사용하기 위해, sphinx 프로젝트의 conf.py를 수정해 주어야 하는데
아래의 딕셔너리 항목을 추가해 주면 됩니다.

.. code-block:: python

   latex_elements = {
      # ...
      'preamble': '\usepackage{kotex}',
      # ...
   }
