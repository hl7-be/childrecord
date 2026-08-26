<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile BeDocument
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Bundle</sch:title>
    <sch:rule context="f:Bundle">
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:timestamp) &gt;= 1">timestamp: minimum cardinality of 'timestamp' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry</sch:title>
    <sch:rule context="f:Bundle/f:entry">
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
      <sch:assert test="count(f:fullUrl) &gt;= 1">fullUrl: minimum cardinality of 'fullUrl' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 1">bodySite: maximum cardinality of 'bodySite' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 1">bodySite: maximum cardinality of 'bodySite' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 1">bodySite: maximum cardinality of 'bodySite' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 1">bodySite: maximum cardinality of 'bodySite' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 1">bodySite: maximum cardinality of 'bodySite' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 1">specimen: maximum cardinality of 'specimen' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:masterIdentifier) &lt;= 1">masterIdentifier: maximum cardinality of 'masterIdentifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:docStatus) &lt;= 1">docStatus: maximum cardinality of 'docStatus' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:date) &lt;= 1">date: maximum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:author) &gt;= 1">author: minimum cardinality of 'author' is 1</sch:assert>
      <sch:assert test="count(f:author) &lt;= 1">author: maximum cardinality of 'author' is 1</sch:assert>
      <sch:assert test="count(f:authenticator) &lt;= 1">authenticator: maximum cardinality of 'authenticator' is 1</sch:assert>
      <sch:assert test="count(f:custodian) &lt;= 1">custodian: maximum cardinality of 'custodian' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:content) &gt;= 1">content: minimum cardinality of 'content' is 1</sch:assert>
      <sch:assert test="count(f:content) &lt;= 1">content: maximum cardinality of 'content' is 1</sch:assert>
      <sch:assert test="count(f:context) &lt;= 1">context: maximum cardinality of 'context' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:value[x] 1</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:value[x]">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 1">comparator: maximum cardinality of 'comparator' is 1</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:bodySite</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:referenceRange</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:referenceRange">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:component</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:component">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:bodySite/f:extension</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:bodySite/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:relatesTo</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:relatesTo">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:target) &gt;= 1">target: minimum cardinality of 'target' is 1</sch:assert>
      <sch:assert test="count(f:target) &lt;= 1">target: maximum cardinality of 'target' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:content</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:content">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:attachment) &gt;= 1">attachment: minimum cardinality of 'attachment' is 1</sch:assert>
      <sch:assert test="count(f:attachment) &lt;= 1">attachment: maximum cardinality of 'attachment' is 1</sch:assert>
      <sch:assert test="count(f:format) &lt;= 1">format: maximum cardinality of 'format' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:content/f:attachment</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:content/f:attachment">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:contentType) &gt;= 1">contentType: minimum cardinality of 'contentType' is 1</sch:assert>
      <sch:assert test="count(f:contentType) &lt;= 1">contentType: maximum cardinality of 'contentType' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:data) &lt;= 1">data: maximum cardinality of 'data' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:size) &lt;= 1">size: maximum cardinality of 'size' is 1</sch:assert>
      <sch:assert test="count(f:hash) &lt;= 1">hash: maximum cardinality of 'hash' is 1</sch:assert>
      <sch:assert test="count(f:title) &lt;= 1">title: maximum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:creation) &lt;= 1">creation: maximum cardinality of 'creation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:resource/f:context</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:resource/f:context">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:facilityType) &lt;= 1">facilityType: maximum cardinality of 'facilityType' is 1</sch:assert>
      <sch:assert test="count(f:practiceSetting) &lt;= 1">practiceSetting: maximum cardinality of 'practiceSetting' is 1</sch:assert>
      <sch:assert test="count(f:sourcePatientInfo) &lt;= 1">sourcePatientInfo: maximum cardinality of 'sourcePatientInfo' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
