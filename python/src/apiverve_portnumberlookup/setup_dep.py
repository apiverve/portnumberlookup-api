from setuptools import setup, find_packages

setup(
    name='apiverve_portnumberlookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Port Number Lookup identifies network services and port ranges from any port number or service name. Each query returns the assigned service, description, and classification across well-known, registered, or dynamic ranges, while paid plans add protocol details.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/portnumberlookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
