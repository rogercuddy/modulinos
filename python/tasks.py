from invoke import run, task

@task
def test():
  run("python scriptedmain.py")
  run("python test.py")

@task
def pylint():
  run("pylint *.py")

@task
def pyflakes():
  run("pyflakes .")

@task("pylint", "pyflakes")
def lint():
  pass
