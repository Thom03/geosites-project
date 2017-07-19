import os
from distutils.core import setup

def read(*rnames):
    return open(os.path.join(os.path.dirname(__file__), *rnames)).read()

setup(
    name="{{ project_name }}",
    version="0.1",
    author="Matthew Hanson",
    author_email="",
    description="{{ project_name }}, a GeoNode Geosites project",
    long_description=(read('README.md')),
    # Full list of classifiers can be found at:
    # http://pypi.python.org/pypi?%3Aaction=list_classifiers
    classifiers=[
        'Development Status :: 1 - Planning',
    ],
    license="BSD",
    keywords="geonode django",
    url='https://github.com/{{ project_name }}/{{ project_name }}',
    packages=['{{ project_name }}',],
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'geonode==2.6',
        'django-tastypie==0.11.0',
        'django-blog-zinnia==0.14.3', 
        'django-tagging==0.3.6'
    ]
)
