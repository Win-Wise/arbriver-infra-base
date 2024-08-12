from setuptools import setup, find_packages
import os

# Path to the requirements.txt file
requirements_path = os.path.join(os.path.dirname(__file__), '..', 'requirements.txt')

# Read the requirements from the file
with open(requirements_path) as f:
    install_requires = f.read().splitlines()

setup(
    name='arbhelpers',
    version='0.1',
    packages=['arbhelpers'],  # Explicitly list the package
    package_dir={'arbhelpers': '.'},  # Explicitly state the package directory
    install_requires=install_requires,
)

