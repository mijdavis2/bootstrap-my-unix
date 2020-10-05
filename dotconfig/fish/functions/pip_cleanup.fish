function pip_cleanup
	pip freeze | xargs pip uninstall -y
end
