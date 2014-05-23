#!/bin/sh

echo "oscap xccdf eval --profile test"

oscap xccdf eval --profile test \
	--results /srv/govready/audit/reports/results-test.xml \
	--report /srv/govready/audit/reports/report-test.html \
	--cpe /usr/share/xml/scap/ssg/content/ssg-rhel6-cpe-dictionary.xml \
	/usr/share/xml/scap/ssg/content/ssg-rhel6-xccdf.xml ; true

echo "oscap xccdf eval --profile stig-rhel6-server"

oscap xccdf eval --profile stig-rhel6-server \
	--results /srv/govready/audit/reports/results-stig-rhel6-server.xml \
	--report /srv/govready/audit/reports/report-stig-rhel6-server.html \
	--cpe /usr/share/xml/scap/ssg/content/ssg-rhel6-cpe-dictionary.xml \
	/usr/share/xml/scap/ssg/content/ssg-rhel6-xccdf.xml ; true

#
# Gotchas
#
# Adding the `; true` allows Vagrant to continue and not trap for exit status code `0` from scap run. 
# From oscap man page: 
#    Probe the system and evaluate all definitions from OVAL Definition file. Print result of  each  definition
#    to standard output. The return code is 0 after a  successful evaluation. On error, value 1 is returned.
#
