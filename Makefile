deploy:
	gcloud functions deploy gsheets_check_pipeline \
	--runtime python310 \
	--trigger-topic gsheets_check_trigger \
	--allow-unauthenticated \
	--source . \
	--region europe-west3 \
	--timeout 180 \
	--memory 512MB \
	--set-env-vars=PROJECT_ID="propertyanalytics-404010",CLIENT_EMAIL="propertyanalytics@propertyanalytics-404010.iam.gserviceaccount.com",PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCWxnspTW98noFn\nV1FKCzhGu8En5PDLme6LYJMgF3jI6BpkPrLH4QSETIp/X6w/bTK3FstD3M7cj8WF\ny/BAgViAWoUNvXFigIIDRclRh9X3cjbPYt/evneRGVfpHP3+1c9gphfZKgndSW3i\njL3hfNVCxtxvkFNXWY3XvM6sefFVI776/7P6jKbSzS/MOxKfZJqtqyvwQUcAXGn/\ngpnQRsF9pAh5APcizCi+Rf8wIrNxZtDlWCzAGoawuInGnbhJYWutsZbNHAHS49TC\nzZHE8pejItO7apsdMC2eHGryGVW7FWqB5qc6V7EnKLMf1Y669JXiZL27Bou7zdOH\npFODJ3cHAgMBAAECggEACqVmIeL1WcvJYFYih8NmDFyKhXodZIrwdIfzq4LsxOba\nojRpJELnsj3DU74aJ/paZ+IkpRyMwLcoH8voIW3gpWN+3JsBTA6932RIlEium4PF\nifw1yYESaTzsX6nr51gKhg0ERxG4U5cxOptsduT9G/N1sizzLYpFwTN0Nmp/116M\niMejzVMkjpluM+F2+prE3YOw/IwYFi2hhMUUB4SdlBRz6tQro+KNwKdg6V8TD8Gc\nMMfkdnUULugekpMgUQdwJBxOMsWStrEAwuBP8isdP6N8/8EQUxK2+cbFFWMPlaBM\nk0Mn/qoDuZTySg3B9uMHUpkTdNb7B6p+3QYl75nH/QKBgQDHPSKKaxO5ltnJ+Hdj\nyahmNC+JVyxwj/FQIVFbLji4qZQxzwrBqDEVJ4tqyO9AedVek8d/qpyTN9syJ9jR\nfEnE7xNMpd4FxRX75Xb3/DNzXmtnjMFl19QxNKAoQ9aoHu2I8KJbVPGYHx8LfRyA\nSHEvXBO/1Y9xG3/WFZyp0rhUqwKBgQDBus/FIFWqcqL/ve5JyVRXM2M17vanA3p4\nMk2iu1s68FRTnpadeu1N4tgI5XH+YvAFgeJDA21f4BPj7quD2aLi0i1qtKgJXyuC\nSxB2hI9D+zV3AwlaN9TAAGODCd1i3ECLGLx31M1HRlkMWSugS1iZBrIFyMjZQXt2\nbq6uNjePFQKBgGDL8twM6ahhAa5+aIKyln4RHIc9Mvn89OBZT41dB3Gv8a/BRxiO\n/kmozLM0rAhHKMKqSWJdIXTkzjmv4kbke3KSNG4op5VmCyg2c3ZHsTd7x/KnD87K\n7Ox7BNSLIN7NJ9pADqEQw8+ETzDlt9MbXuIDehTZTLdHBPSdy182YRfBAoGASO/u\nfYcY+Z1DZQm7Byi3ikUcmxem4WZb25kExbnINT56YSkaB5xab7JyJ5dK/b1+JHSs\nHRLTQP96PZyEEpYDz2XWF5CAm1araNieECEEV1Hi5TXNdZwDi24aCSHTqf7GhhgA\nDRWfW7BOommIFUeIycRNjgP0KmeO9h3hwlFDRakCgYAuScHz4Zujg7YPz9d6coUq\ncUXZO/geAMMxYOysANPTuWsfD41qltEjj/H0ZBmIh8LAB/txvu6E2dvLbV2/nmcR\n8djqWlBPCvR1b/tJpgYKyiD+fCooeM5w9O0G5yn86urJLIJCtij94vsJN/w066rm\noJY2KHYHgIX13YFKDZ8ofw==\n-----END PRIVATE KEY-----\n" \
	--set-env-vars=BUCKET_URL="gs://property-bucket-1",API_SECRET_KEY="projects/1055964284102/secrets/keyfile:3" \
	--set-env-vars=SLACK_TOKEN="xoxb-6215218722086-6221801310659-o52mZRwqv5JeceFX04imHmym"