# API with bash code in AWS Lambda and API gateway

Amazon web services (AWS) is a powerful platform for almost every web service you can imagine. With AWS API Gateway and Lambda you are able to create REST API’s with ease! API gateway is used to create the API. Lambda lets you execute code when the API is invoked.

# Setup the Lambda function to run Bash code

- Go to your AWS Console and open Lambda. Click on create function.
- Select "Custom Runtime" along with “Provide your own bootstrap” option from the list of available runtimes. Finally, set the right security permissions.
- Once the Lambda function is created, click on “Layers”. Then click on “Add a layer.
- In the next screen you have to select the type of layer you want to use. In this case you need to select: “Provide a layer version ARN”. In the textbox paste the following line: arn:aws:lambda:<region>:744348701589:layer:bash:8
- Replace <region> with your AWS region.
