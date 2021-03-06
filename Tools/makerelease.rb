#!/usr/bin/env ruby

load "ReleaseManager.rb"

proj = Project.new("CCMenu", "1.1")
proj.svnroot = "https://ccmenu.svn.sourceforge.net/svnroot/ccmenu"
proj.ftpdest = "ftp://upload.sourceforge.net/incoming"

env = Environment.new()

m = ReleaseManager.new(proj, env, ARGV.index("-d") == nil)
m.createWorkingDirectories
m.checkOutSource
m.createSourcePackage
m.buildModules
m.createBinaryPackage
m.createAppcast
#m.upload
#m.cleanup


