from setuptools import setup, find_packages

setup(
    name='apiverve_portnumberlookup',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Port Number Lookup is a tool for looking up well-known port numbers and network services. It provides information about ports including service name, protocol, description, and category for common network services.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
