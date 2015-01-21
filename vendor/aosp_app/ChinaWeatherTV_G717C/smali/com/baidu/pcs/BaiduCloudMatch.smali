.class public Lcom/baidu/pcs/BaiduCloudMatch;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduCloudMatch.java"


# static fields
.field private static final File_Mini_Length:I = 0x40000

.field private static final Value_Method:Ljava/lang/String; = "rapidupload"

.field private static hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/pcs/BaiduCloudMatch;->hexChar:[C

    .line 17
    return-void

    .line 125
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method

.method private static getFileCorrectMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, md5:Ljava/lang/String;
    const/4 v3, 0x0

    .line 96
    .local v3, fis:Ljava/io/InputStream;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 97
    .local v6, messagedigest:Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    .end local v3           #fis:Ljava/io/InputStream;
    .local v4, fis:Ljava/io/InputStream;
    const/high16 v8, 0x4

    :try_start_1
    new-array v0, v8, [B

    .line 99
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 100
    .local v7, numRead:I
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 101
    if-lez v7, :cond_0

    .line 102
    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/pcs/BaiduCloudMatch;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    move-object v3, v4

    .line 113
    .end local v0           #buffer:[B
    .end local v4           #fis:Ljava/io/InputStream;
    .end local v6           #messagedigest:Ljava/security/MessageDigest;
    .end local v7           #numRead:I
    .restart local v3       #fis:Ljava/io/InputStream;
    :goto_0
    return-object v5

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 110
    .local v2, e1:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2           #e1:Ljava/security/NoSuchAlgorithmException;
    .end local v3           #fis:Ljava/io/InputStream;
    .restart local v4       #fis:Ljava/io/InputStream;
    .restart local v6       #messagedigest:Ljava/security/MessageDigest;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/InputStream;
    .restart local v3       #fis:Ljava/io/InputStream;
    goto :goto_3

    .line 107
    .end local v3           #fis:Ljava/io/InputStream;
    .restart local v4       #fis:Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/InputStream;
    .restart local v3       #fis:Ljava/io/InputStream;
    goto :goto_2

    .line 105
    .end local v3           #fis:Ljava/io/InputStream;
    .restart local v4       #fis:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/InputStream;
    .restart local v3       #fis:Ljava/io/InputStream;
    goto :goto_1

    .end local v3           #fis:Ljava/io/InputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #fis:Ljava/io/InputStream;
    .restart local v7       #numRead:I
    :cond_0
    move-object v3, v4

    .end local v4           #fis:Ljava/io/InputStream;
    .restart local v3       #fis:Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, fis:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 68
    .local v4, md5:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    .end local v2           #fis:Ljava/io/InputStream;
    .local v3, fis:Ljava/io/InputStream;
    const/high16 v7, 0x4

    :try_start_1
    new-array v0, v7, [B

    .line 70
    .local v0, buffer:[B
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 71
    .local v5, messagedigest:Ljava/security/MessageDigest;
    const/4 v6, 0x0

    .line 72
    .local v6, numRead:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 76
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/pcs/BaiduCloudMatch;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object v2, v3

    .line 87
    .end local v0           #buffer:[B
    .end local v3           #fis:Ljava/io/InputStream;
    .end local v5           #messagedigest:Ljava/security/MessageDigest;
    .end local v6           #numRead:I
    .restart local v2       #fis:Ljava/io/InputStream;
    :goto_1
    return-object v4

    .line 73
    .end local v2           #fis:Ljava/io/InputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fis:Ljava/io/InputStream;
    .restart local v5       #messagedigest:Ljava/security/MessageDigest;
    .restart local v6       #numRead:I
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 78
    .end local v0           #buffer:[B
    .end local v5           #messagedigest:Ljava/security/MessageDigest;
    .end local v6           #numRead:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 79
    .end local v3           #fis:Ljava/io/InputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/InputStream;
    .restart local v3       #fis:Ljava/io/InputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/InputStream;
    .restart local v2       #fis:Ljava/io/InputStream;
    goto :goto_4

    .line 80
    .end local v2           #fis:Ljava/io/InputStream;
    .restart local v3       #fis:Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/InputStream;
    .restart local v2       #fis:Ljava/io/InputStream;
    goto :goto_3

    .line 78
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 120
    :cond_0
    sget-object v2, Lcom/baidu/pcs/BaiduCloudMatch;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    sget-object v2, Lcom/baidu/pcs/BaiduCloudMatch;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 15
    .parameter "localFilePath"
    .parameter "severPath"

    .prologue
    .line 21
    new-instance v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v9}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 22
    .local v9, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    const/4 v3, 0x0

    .line 23
    .local v3, fileMd5:Ljava/lang/String;
    const/4 v2, 0x0

    .line 24
    .local v2, fileCorrectMd5:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 25
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/32 v13, 0x40000

    cmp-long v11, v11, v13

    if-gez v11, :cond_2

    .line 27
    :cond_0
    iget-object v11, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v12, "File does not exsit or File size less than 256K."

    iput-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 58
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v9

    .line 30
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 31
    .local v4, fileSize:J
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v7, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "method"

    const-string v13, "rapidupload"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduCloudMatch;->getAccessToken()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "path"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "content-length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/baidu/pcs/BaiduCloudMatch;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static/range {p1 .. p1}, Lcom/baidu/pcs/BaiduCloudMatch;->getFileCorrectMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "content-md5"

    invoke-direct {v11, v12, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "slice-md5"

    invoke-direct {v11, v12, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduCloudMatch;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, url:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v6}, Lcom/baidu/pcs/BaiduCloudMatch;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v8

    .line 48
    .local v8, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v8, :cond_1

    .line 49
    iget-object v11, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v12, v8, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 50
    iget-object v11, v8, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v11, :cond_1

    .line 51
    iget-object v11, v8, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v11}, Lcom/baidu/pcs/BaiduCloudMatch;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public bridge synthetic getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method
