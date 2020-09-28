function handler () {
    # Event Data is sent as the first parameter
    EVENT_DATA=$1
    
    # Event Data in json
    EVENT_JSON=$(echo $EVENT_DATA | jq .)
   
    # For AWS API Gateway. Read the method type
    method=$(echo $EVENT_JSON | jq -r ".requestContext.http.method")
    if [ "$method"  = "POST" ]
    then
            #do some post things
            RESPONSE="{\"statusCode\": 201, \"body\": \"Created\"}"
            # success o/p
            echo $RESPONSE >&1
    elif [ "$method"  = "GET" ]
    then
         #do some post things
         RESPONSE="{\"statusCode\": 200, \"body\": \"Ok\"}"
         # success o/p
         echo $RESPONSE >&1
    else
        #error
        RESPONSE="{\"statusCode\": 400, \"body\": \"BAD METHOD\"}"
        echo $RESPONSE >&2
    fi
}
