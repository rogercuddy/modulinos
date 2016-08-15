from invoke import run, task


@task
def test():
    run('python modulino.py')
    run('python test.py')


@task
def pep8():
    run('pep8 .')


@task
def pylint():
    run('pylint *.py')


@task
def pyflakes():
    run('pyflakes .')


@task
def flake8():
    run('flake8 .')


@task
def bandit():
    run('find . -name \'*.py\' | xargs bandit')


@task(pre=[pep8, pylint, pyflakes, flake8, bandit])
def lint():
    pass
