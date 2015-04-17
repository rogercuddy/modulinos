from invoke import run, task

@task
def test():
  run("python modulino.py")
  run("python test.py")

@task
def pep8():
  run("pep8 .")

@task
def pylint():
  run("pylint *.py")

@task
def pyflakes():
  run("pyflakes .")

@task("pep8", "pylint", "pyflakes")
def lint():
  pass
