project_name: "marketplace_bqml_ext_git"

application: ml-accelerator {
  label: "Machine Learning Accelerator"
  file: "bundle.js"
  sri_hash: "2Se7ajYLg8GY60c+rlO+X9q3qFnDjV4C7uiYgLWn8iM+/ufBt/+IR+bVOyVc+kmp"
  entitlements: {
    core_api_methods: [
      "all_lookml_models",
      "create_query",
      "run_query",
      "lookml_model_explore",
      "model_fieldname_suggestions",
      "me",
      "user_attribute_user_values",
      "create_sql_query",
      "run_sql_query"
    ]

    use_form_submit: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://en.wikipedia.org/wiki", "https://developers.google.com/machine-learning/glossary", "https://cloud.google.com/vertex-ai/docs/model-registry/introduction"]
    scoped_user_attributes: [
      "bigquery_connection_name",
      "bqml_model_dataset_name",
      "gcp_project",
    ]
  }
}

constant: CONNECTION_NAME {
  value: "looker_bqml"
  # export: override_required
}

constant: BQML_MODEL_DATASET_NAME {
  value: "{{_user_attributes['marketplace_bqml_ext_git_ml_accelerator_bqml_model_dataset_name']}}"
}

constant: GCP_PROJECT {
  value: "{{_user_attributes['marketplace_bqml_ext_git_ml_accelerator_gcp_project']}}"
}
