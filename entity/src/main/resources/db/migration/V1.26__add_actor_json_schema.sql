-- ------------------------------------------------
-- Version: v1.26
--
-- Description: Migration that adds the JSON Schema for PID Owner Template.
-- -------------------------------------------------

UPDATE Template SET json_schema ='{
	"$schema": "http://json-schema.org/draft-07/schema",
	"$id": "https://api.cat.argo.grnet.gr/schemas/actor_template.json",
	"title": "Actor Json schema",
	"type": "object",
    "additionalProperties": false,
	"required": [
		"name",
		"assessment_type",
		"version",
		"status",
		"published",
		"timestamp",
		"actor",
		"organisation",
		"subject",
		"result",
		"principles"
	],
	"properties": {
		"name": {
			"$id": "#root/name",
			"title": "Name",
			"type": "string"
		},
		"assessment_type": {
			"$id": "#root/assessment_type",
			"title": "Assessment_type",
            "additionalProperties": false,
			"type": "object",
			"required": [
				"id",
				"name"
			],
			"properties": {
				"id": {
					"$id": "#root/assessment_type/id",
					"title": "Id",
					"type": "integer"
				},
				"name": {
					"$id": "#root/assessment_type/name",
					"title": "Name",
					"type": "string"
				}
			}
		}
,
		"version": {
			"$id": "#root/version",
			"title": "Version",
			"type": "string"
		},
		"status": {
			"$id": "#root/status",
			"title": "Status",
			"type": "string"
		},
		"published": {
			"$id": "#root/published",
			"title": "Published",
			"type": "boolean"
		},
		"timestamp": {
			"$id": "#root/timestamp",
			"title": "Timestamp",
			"type": "string",
            "format": "date-time"
		},
		"actor": {
			"$id": "#root/actor",
			"title": "Actor",
			"type": "object",
            "additionalProperties": false,
			"required": [
				"id",
				"name"
			],
			"properties": {
				"id": {
					"$id": "#root/actor/id",
					"title": "Id",
					"type": "integer"
				},
				"name": {
					"$id": "#root/actor/name",
					"title": "Name",
					"type": "string"
				}
			}
		}
,
		"organisation": {
			"$id": "#root/organisation",
			"title": "Organisation",
			"type": "object",
            "additionalProperties": false,
			"required": [
				"name",
				"id"
			],
			"properties": {
				"name": {
					"$id": "#root/organisation/name",
					"title": "Name",
					"type": "string"
				},
				"id": {
					"$id": "#root/organisation/id",
					"title": "Id",
					"type": "string"
				}
			}
		}
,
		"subject": {
			"$id": "#root/subject",
			"title": "Subject",
			"type": "object",
            "additionalProperties": false,
			"required": [
				"name",
				"id",
				"type"
			],
			"properties": {
				"name": {
					"$id": "#root/subject/name",
					"title": "Name",
					"type": "string"
				},
				"id": {
					"$id": "#root/subject/id",
					"title": "Id",
					"type": "string"
				},
				"type": {
					"$id": "#root/subject/type",
					"title": "Type",
					"type": "string"
				}
			}
		}
,
		"result": {
			"$id": "#root/result",
			"title": "Result",
			"type": "object",
            "additionalProperties": false,
			"required": [
				"compliance",
				"ranking"
			],
			"properties": {
				"compliance": {
					"$id": "#root/result/compliance",
					"title": "Compliance",
					"type": "boolean"
				},
				"ranking": {
					"$id": "#root/result/ranking",
					"title": "Ranking",
					"type": "number",
                    "minimum": 0
				}
			}
		}
,
		"principles": {
			"$id": "#root/principles",
			"title": "Principles",
			"type": "array",
            "minItems": 1,
            "maxItems": 1,
			"items":{
				"$id": "#root/principles/items",
				"title": "Items",
                "additionalProperties": false,
				"type": "object",
				"required": [
					"id",
					"name",
					"description",
					"criteria"
				],
				"properties": {
					"id": {
						"$id": "#root/principles/items/id",
						"title": "Id",
						"type": "string"
					},
					"name": {
						"$id": "#root/principles/items/name",
						"title": "Name",
						"type": "string"
					},
					"description": {
						"$id": "#root/principles/items/description",
						"title": "Description",
						"type": "string"
					},
					"criteria": {
						"$id": "#root/principles/items/criteria",
						"title": "Criteria",
						"type": "array",
                        "minItems": 1,
                        "maxItems": 1,
						"items":{
							"$id": "#root/principles/items/criteria/items",
							"title": "Items",
                            "additionalProperties": false,
							"type": "object",
							"required": [
								"id",
								"name",
								"description",
								"imperative",
								"metric"
							],
							"properties": {
								"id": {
									"$id": "#root/principles/items/criteria/items/id",
									"title": "Id",
									"type": "string"
								},
								"name": {
									"$id": "#root/principles/items/criteria/items/name",
									"title": "Name",
									"type": "string"
								},
								"description": {
									"$id": "#root/principles/items/criteria/items/description",
									"title": "Description",
									"type": "string"
								},
								"imperative": {
									"$id": "#root/principles/items/criteria/items/imperative",
									"title": "Imperative",
									"type": "string"
								},
								"metric": {
									"$id": "#root/principles/items/criteria/items/metric",
									"title": "Metric",
									"type": "object",
                                    "additionalProperties": false,
									"required": [
										"type",
										"result",
										"value",
										"benchmark",
										"algorithm",
										"tests"
									],
									"properties": {
										"type": {
											"$id": "#root/principles/items/criteria/items/metric/type",
											"title": "Type",
											"type": "string"
										},
										"result": {
											"$id": "#root/principles/items/criteria/items/metric/result",
											"title": "Result",
											"type": "number",
                                            "minimum": 0,
                                            "maximum": 1
										},
										"value": {
											"$id": "#root/principles/items/criteria/items/metric/value",
											"title": "Value",
											"type": "number",
                                            "minimum": 0,
                                            "maximum": 1
										},
										"benchmark": {
											"$id": "#root/principles/items/criteria/items/metric/benchmark",
											"title": "Benchmark",
											"type": "object",
                                            "additionalProperties": false,
											"required": [
												"equal_greater_than"
											],
											"properties": {
												"equal_greater_than": {
													"$id": "#root/principles/items/criteria/items/metric/benchmark/equal_greater_than",
													"title": "Equal_greater_than",
													"type": "integer",
                                                    "minimum": 1,
                                                    "maximum": 1
												}
											}
										}
,
										"algorithm": {
											"$id": "#root/principles/items/criteria/items/metric/algorithm",
											"title": "Algorithm",
											"type": "string"
										},
										"tests": {
											"$id": "#root/principles/items/criteria/items/metric/tests",
											"title": "Tests",
											"type": "array",
                                            "minItems": 1,
                                            "maxItems": 1,
											"items":{
												"$id": "#root/principles/items/criteria/items/metric/tests/items",
												"title": "Items",
												"type": "object",
                                                "additionalProperties": false,
												"required": [
													"type",
													"id",
													"name",
													"description",
													"text",
													"value",
													"result",
													"evidence_url",
													"guidance"
												],
												"properties": {
													"type": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/type",
														"title": "Type",
														"type": "string"
													},
													"id": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/id",
														"title": "Id",
														"type": "string"
													},
													"name": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/name",
														"title": "Name",
														"type": "string"
													},
													"description": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/description",
														"title": "Description",
														"type": "string"
													},
													"text": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/text",
														"title": "Text",
														"type": "string"
													},
													"value": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/value",
														"title": "Value",
														"type": "boolean"
													},
													"result": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/result",
														"title": "Result",
														"type": "number",
                                                        "minimum": 0,
                                                        "maximum": 1
													},
													"evidence_url": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/evidence_url",
														"title": "Evidence_url",
														"type": "array",
                                                        "minItems": 0,
                                                        "items": { "type": "string", "format": "uri", "pattern": "^https?://"}
													},
													"guidance": {
														"$id": "#root/principles/items/criteria/items/metric/tests/items/guidance",
														"title": "Guidance",
														"type": "object",
                                                        "additionalProperties": false,
														"required": [
															"id",
															"description"
														],
														"properties": {
															"id": {
																"$id": "#root/principles/items/criteria/items/metric/tests/items/guidance/id",
																"title": "Id",
																"type": "string"
															},
															"description": {
																"$id": "#root/principles/items/criteria/items/metric/tests/items/guidance/description",
																"title": "Description",
																"type": "string"
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}'
WHERE id=1;
