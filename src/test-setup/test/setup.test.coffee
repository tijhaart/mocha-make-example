describe 'test setup', ->

	it 'should have made "expect" globally available', ->
		assert(typeof expect == 'function', '"expect" not available globally')

	it 'should have made "request" globally available', ->
		assert(typeof request == 'function', '"request" not available globally')

	it 'should have made "assert" globally available', ->
		assert(typeof assert == 'function', '"assert" not available globally')