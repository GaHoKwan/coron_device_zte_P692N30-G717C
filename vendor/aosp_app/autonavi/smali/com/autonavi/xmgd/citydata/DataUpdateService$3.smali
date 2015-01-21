.class Lcom/autonavi/xmgd/citydata/DataUpdateService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTTPService][DataUpdateService] url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;
    invoke-static {v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11

    :try_start_2
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getImageType()Ljava/lang/String;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResVersion:I
    invoke-static {v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><opg><activitycode>0001</activitycode><processtime>%1$s</processtime><actioncode>0</actioncode><protversion>2</protversion><svccont><info><udid>%2$s</udid><syscode>%3$s</syscode><engine_version>%4$s</engine_version><app_version>%5$s</app_version><map_version>%6$s</map_version><res_version>%7$s</res_version><suburl>%8$s</suburl><sign>%9$s</sign><cellid></cellid><wifi></wifi><cx></cx><cy></cy></info></svccont></opg>"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMddHHmmss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mImei:Ljava/lang/String;
    invoke-static {v9}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mSyscode:I
    invoke-static {v9}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;
    invoke-static {v9}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;
    invoke-static {v9}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;
    invoke-static {v9}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object v5, v7, v8

    const/4 v5, 0x7

    aput-object v1, v7, v5

    const/16 v1, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mSyscode:I
    invoke-static {v8}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;
    invoke-static {v8}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$1800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/xmgd/utility/MD5;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    sget-boolean v5, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTTPService][DataUpdateService] requestStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_15

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :goto_0
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v1

    const/16 v5, 0xa

    const/16 v6, 0x2718

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DataUpdateService] DataUpdateService in postDownloadDataList run , conn.getInputStream() read Exception ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v13, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "GBK"

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    sget-boolean v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTTPService][DataUpdateService] responseStr = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getXmlInfomation()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v5, 0x2722

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_9
    :try_start_a
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataListFile:Ljava/io/File;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/FileUtils;->writeFile(Ljava/io/File;[B)Z

    sget-boolean v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataUpdateService]mMapVersion = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;
    invoke-static {v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :goto_4
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :cond_b
    :goto_5
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_c
    :try_start_d
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v5, 0x271f

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_6
    :try_start_e
    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v3

    const/16 v5, 0xa

    const/16 v6, 0x271a

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v3, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v3, :cond_d

    sget-object v3, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DataUpdateService] DataUpdateService in postDownloadDataList run ,NameNotFoundException Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_d
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    if-eqz v2, :cond_e

    :try_start_f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :cond_e
    :goto_7
    if-eqz v1, :cond_4

    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_f
    :try_start_11
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v5, 0x2720

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v0

    :goto_8
    :try_start_12
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v1

    const/16 v5, 0xa

    const/16 v6, 0x271b

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DataUpdateService] DataUpdateService in postDownloadDataList run ,NameNotFoundException Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_10
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z
    invoke-static {v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    if-eqz v3, :cond_11

    :try_start_13
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    :cond_11
    :goto_9
    if-eqz v2, :cond_4

    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_12
    :try_start_15
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    move-result v0

    :goto_a
    :try_start_16
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v5, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v1

    const/16 v5, 0xa

    add-int/lit16 v0, v0, 0x4e20

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v0, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :goto_b
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z
    invoke-static {v1, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    if-eqz v3, :cond_13

    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    :cond_14
    :goto_d
    throw v0

    :catch_a
    move-exception v0

    move v0, v4

    goto :goto_a

    :cond_15
    :try_start_19
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/16 v5, 0xa

    add-int/lit16 v1, v1, 0x7530

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_4

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_b

    :catch_10
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_8

    :catch_11
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8

    :catch_12
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catch_13
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6
.end method
