VERSION = '1.3.0'

exports['sanity test'] = (test)-> 
    test.expect 1
    test.ok true, "this assertion should pass"
    test.done()

exports['test cli callable'] = (test)->
	util = require('util')
	exec = require('child_process').exec
	
	thetest = (error, stdout, stderr)->
		if error isnt null
			test.ok false, 'coho fucked up'
			test.done()
		else
			test.ok true, 'successfully called coho'
			test.done()
			
	child = exec "./coho #{ VERSION }", thetest

exports['creating temp directory'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp")
	test.done()

exports['creating release directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release")
	test.done()

exports['creating lib directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib")
	test.done()

exports['creating ios directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/ios")
	test.done()

exports['creating android directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/android")
	test.done()

exports['creating blackberry directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/blackberry")
	test.done()

exports['creating windows directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/windows")
	test.done()

exports['creating symbian directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/symbian")
	test.done()

exports['creating webos directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/webos")
	test.done()

exports['creating bada directory']=(test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/bada")
	test.done()

exports['confirm ios clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-ios/PhoneGapLib/VERSION")
	test.done()

exports['confirm android clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-android/VERSION")
	test.done()

exports['confirm blackberry clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-blackberry/VERSION")
	test.done()

exports['confirm windows clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-windows-phone/VERSION")
	test.done()

exports['confirm webos clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-webos/VERSION")
	test.done()

exports['confirm symbian clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-symbian/VERSION")
	test.done()			

exports['confirm bada clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-bada/VERSION")
	test.done()

exports['confirm docs clone worked'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-docs/VERSION")
	test.done()

exports['check ios version number'] = (test)->
	test.expect 1
	fs = require('fs')	
	if fs.readFileSync('./temp/repositories/callback-ios/PhoneGapLib/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version"
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check android version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-android/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version " + VERSION +" " + vFile
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check blackberry version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-blackberry/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version"
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check windows version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-windows-phone/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version"
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check symbian version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-symbian/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version"
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check webos version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-webos/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version"
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check bada version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-bada/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version" + fs.readFileSync('./temp/repositories/callback-bada/VERSION', 'ascii')
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['check docs version number'] = (test)->
	test.expect 1
	fs = require('fs')
	if fs.readFileSync('./temp/repositories/callback-docs/VERSION', 'ascii') != VERSION
		test.ok false, "VERSION file doesn't match release version"
		test.done()
	else
		test.ok true, "VERSION file matches release version"
		test.done()

exports['docs script successfull'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-docs/public")
	test.done()

exports['docs copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/doc")
	test.done()
	
exports['ios script successfull'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-ios/dist/PhoneGap-"+VERSION+".dmg")
	test.done()

exports['ios dmg copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/ios/PhoneGap-"+VERSION+".dmg")
	test.done()

exports['ios dmg sha1 copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/ios/PhoneGap-"+VERSION+".dmg.SHA1")
	test.done()

exports['android script successfull'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-android/example/libs/phonegap-"+VERSION+".jar")
	test.done()

exports['android phonegap js copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/android/phonegap-"+VERSION+".js")
	test.done()

exports['android phonegap jar copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/android/phonegap-"+VERSION+".jar")
	test.done()

exports['android example copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/android/example")
	test.done()

exports['blackberry script successfull'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/repositories/callback-blackberry/dist/www/phonegap-"+VERSION+".js")
	test.done()

exports['blackberry copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/blackberry/README.md")
	test.done()
	
exports['windows copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/windows/PhoneGapStarter.zip")
	test.done()

exports['symbian copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/symbian/VERSION")
	test.done()

exports['webos copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/webos/VERSION")
	test.done()

exports['bada copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/lib/bada/VERSION")
	test.done()
		
exports['license copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/license")
	test.done()
	
exports['version file copied into release'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/version")
	test.done()

exports['zip exists'] = (test)->
	test.expect 1
	test.ok require('path').existsSync("./temp/release/phonegap-#{ VERSION }.zip")
	test.done()

exports['test if zip is empty'] = (test)->
	fs = require('fs')
	test.expect 1
	test.ok fs.statSync('phonegap-1.3.0.zip').size isnt 0, 'zip created too soon'
	test.ok require('path').existsSync("./temp/release/phonegap-#{ VERSION }.zip")
	test.done()
