Magpie Dev Docker
==================

This is a simple docker image to get a quick working magpie for development purpose!

How to build
-------------

If you wish to build yourself the image, here is the command:

  $ docker build -t magpie-dev .
  
How to use
-----------

You can simply use the image in docker index erwyn/magpie-dev:

  $ docker run -t -i -v <pathToYourWorkingCopy>:/usr/share/magpie -v <pathToTheGitForNotes>:/data/magpie erwyn/magpie-dev

Please, be sure that your web.cfg is properly configured to let you access the magpie instance.
