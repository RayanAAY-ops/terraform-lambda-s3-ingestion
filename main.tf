module "lambda_s3_ingestion" {
  source                       = "./modules/lambda_s3_ingestion"
  s3_lambda_layers_bucket      = "lambda-layers-data-ingestion"
  s3_lambda_destination_bucket = "etl-pipeline-iac-bucket-09072024"
  lambda_function_name         = "python_ingestion_lambda"
  lambda_file_path             = "lambda/lambda_ingestion.zip"
  lambda_layer_file_path       = "${path.root}/lambda/lambda-layers/layer-data-ingestion.zip"
}
