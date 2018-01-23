<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />

    <global id="kotlinMainSourceSet" value="${srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r')}" />
    <global id="mainSourceSetPackage" value="${packageName?replace('.debug|.staging|.systest', '', 'r')}" />
</globals>
