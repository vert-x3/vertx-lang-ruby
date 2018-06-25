/*
 * Copyright 2014 Red Hat, Inc.
 *
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  and Apache License v2.0 which accompanies this distribution.
 *
 *  The Eclipse Public License is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 *
 *  The Apache License v2.0 is available at
 *  http://www.opensource.org/licenses/apache2.0.php
 *
 *  You may elect to redistribute this code under either of these licenses.
 */

/**
 * == JSON
 *
 * Unlike some other languages, Ruby does not have first class support for http://json.org/[JSON] so we use
 * Array and Hash to make handling JSON in your Vert.x applications a bit easier.
 *
 * === JSON objects
 *
 * Ruby hashes represents JSON objects.
 *
 * A JSON object is basically just a map which has string keys and values can be of one of the JSON supported types
 * (string, number, boolean).
 *
 * JSON objects also support nil values.
 *
 * ==== Creating JSON objects
 *
 * Empty JSON objects can be created with the default constructor.
 *
 * You can create a JSON object from a string JSON representation as follows:
 *
 * [source,ruby]
 * ----
 * require 'json'
 * object = JSON.parse('"foo":"bar"')
 * ----
 *
 * ==== Encoding the JSON object to a String
 *
 * You use `JSON.generate` to encode the object to a String form.
 *
 * [source,ruby]
 * ----
 * require 'json'
 * json = JSON.generate(object)
 * ----
 *
 * === JSON arrays
 *
 * Ruby arrays represents JSON arrays.
 *
 * A JSON array is a sequence of values (string, number, boolean).
 *
 * JSON arrays can also contain null values.
 *
 * ==== Creating JSON arrays
 *
 * Empty JSON arrays can be created with the default constructor.
 *
 * You can create a JSON array from a string JSON representation as follows:
 *
 * [source,ruby]
 * ----
 * require 'json'
 * object = JSON.parse('[1,2,3]')
 * ----
 *
 * ==== Encoding the JSON array to a String
 *
 * You use `JSON.generate` to encode the array to a String form.
 *
 * [source,ruby]
 * ----
 * require 'json'
 * json = JSON.generate(array)
 * ----
 */
@Document(fileName = "override/json.adoc")
package docoverride.json;

import io.vertx.docgen.Document;
