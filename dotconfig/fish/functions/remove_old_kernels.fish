function remove_old_kernels
	sudo dnf remove (dnf repoquery --installonly --latest-limit=-2 -q)
end
