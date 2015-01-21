.class Lcom/mediatek/op/telephony/OplmnUpdateUtils;
.super Ljava/lang/Object;
.source "OplmnUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    }
.end annotation


# static fields
.field private static final ADDR:Ljava/lang/String; = "addr"

.field private static final AUTHEN_FILE_PATH:Ljava/lang/String; = "/sdcard/ca.crt"

.field private static final CACHED_OPLMN_FILE_PATH:Ljava/lang/String; = "/sdcard/oplmn.plmn"

.field static final LOG_TAG:Ljava/lang/String; = "OplmnUpdater"

.field static final LOG_TAG_PHONE:Ljava/lang/String; = "PHONE"

.field private static final MD5:Ljava/lang/String; = "md5"

.field private static final MD5_DIGET:Ljava/lang/String; = "MD5"

.field private static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    return-void
.end method

.method static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "version1"
    .parameter "version2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 148
    :cond_0
    const-string v5, "compareVersion, Invalid parameter!"

    invoke-static {v5}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    .line 151
    :cond_1
    const/4 v0, 0x0

    .line 152
    .local v0, index1:I
    const/4 v1, 0x0

    .line 153
    .local v1, index2:I
    const/4 v4, 0x0

    .line 154
    .local v4, result:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 155
    invoke-static {p0, v0}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getValue(Ljava/lang/String;I)[I

    move-result-object v2

    .line 156
    .local v2, number1:[I
    invoke-static {p1, v1}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getValue(Ljava/lang/String;I)[I

    move-result-object v3

    .line 158
    .local v3, number2:[I
    aget v5, v2, v7

    aget v6, v3, v7

    if-ge v5, v6, :cond_2

    .line 159
    const/4 v4, -0x1

    goto :goto_0

    .line 160
    :cond_2
    aget v5, v2, v7

    aget v6, v3, v7

    if-le v5, v6, :cond_3

    .line 161
    const/4 v4, 0x1

    goto :goto_0

    .line 163
    :cond_3
    aget v5, v2, v8

    add-int/lit8 v0, v5, 0x1

    .line 164
    aget v5, v3, v8

    add-int/lit8 v1, v5, 0x1

    goto :goto_0

    .line 167
    .end local v2           #number1:[I
    .end local v3           #number2:[I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_5

    .line 168
    const/4 v4, 0x0

    .line 174
    :goto_1
    return v4

    .line 169
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 170
    const/4 v4, 0x1

    goto :goto_1

    .line 172
    :cond_6
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private static createXml(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "version"
    .parameter "result"

    .prologue
    .line 405
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 406
    .local v4, xmlWriter:Ljava/io/StringWriter;
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 407
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 409
    .local v3, xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 410
    .local v1, pullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 411
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 412
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 415
    const-string v5, ""

    const-string v6, "xml"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const-string v5, ""

    const-string v6, "GTIME"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    invoke-static {}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const-string v5, ""

    const-string v6, "GTIME"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string v5, ""

    const-string v6, "MODEL"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const-string v5, ""

    const-string v6, "MODEL"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v5, ""

    const-string v6, "GIMSI"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string v5, ""

    const-string v6, "GIMSI"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string v5, ""

    const-string v6, "GMEID"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string v5, ""

    const-string v6, "GMEID"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string v5, ""

    const-string v6, "CAPABILITY"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string v5, "vodafone-plmn"

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const-string v5, ""

    const-string v6, "CAPABILITY"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    const-string v5, ""

    const-string v6, "GVER"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string v5, ""

    const-string v6, "GVER"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const-string v5, ""

    const-string v6, "GSTATE"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    if-eqz p2, :cond_0

    const-string v5, "1"

    :goto_0
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const-string v5, ""

    const-string v6, "GSTATE"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const-string v5, ""

    const-string v6, "xml"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 447
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    .end local v1           #pullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_1
    return-object v5

    .line 442
    .restart local v1       #pullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    const-string v5, "0"
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 448
    .end local v1           #pullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create XmlPullParserFactory fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    .line 453
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 450
    :catch_1
    move-exception v0

    .line 451
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not output the xml Serialization: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static downloadOplmnFile(Ljavax/net/ssl/SSLContext;Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;)[B
    .locals 14
    .parameter "sslContext"
    .parameter "oplmnInfo"

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 182
    .local v8, output:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->getAddr()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, oplmnAddr:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 184
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 186
    .local v0, connection:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 187
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 188
    new-instance v7, Ljava/io/File;

    const-string v11, "/sdcard/oplmn.plmn"

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, oplmnFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 190
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 191
    .end local v8           #output:Ljava/io/OutputStream;
    .local v9, output:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v3

    .line 192
    .local v3, length:I
    new-array v6, v3, [B

    .line 193
    .local v6, oplmnBuffer:[B
    :goto_0
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 194
    invoke-virtual {v9, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 205
    .end local v3           #length:I
    .end local v6           #oplmnBuffer:[B
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 206
    .end local v0           #connection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v5           #oplmnAddr:Ljava/lang/String;
    .end local v7           #oplmnFile:Ljava/io/File;
    .end local v9           #output:Ljava/io/OutputStream;
    .end local v10           #url:Ljava/net/URL;
    .local v1, e:Ljava/net/MalformedURLException;
    .restart local v8       #output:Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadOplmnFile ,initialize url fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v8, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 214
    :cond_0
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 221
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    const/4 v6, 0x0

    :goto_3
    return-object v6

    .line 196
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v0       #connection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3       #length:I
    .restart local v5       #oplmnAddr:Ljava/lang/String;
    .restart local v6       #oplmnBuffer:[B
    .restart local v7       #oplmnFile:Ljava/io/File;
    .restart local v9       #output:Ljava/io/OutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 198
    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getMd5Digest([B)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, md5:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->getMd5()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {p1}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->getMd5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v11

    if-eqz v11, :cond_5

    .line 211
    if-eqz v9, :cond_3

    .line 212
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 214
    :cond_3
    if-eqz v2, :cond_4

    .line 215
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    move-object v8, v9

    .line 219
    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    goto :goto_3

    .line 217
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 218
    .local v1, e:Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadOplmnFile , close the stream fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    move-object v8, v9

    .line 211
    .end local v0           #connection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v3           #length:I
    .end local v4           #md5:Ljava/lang/String;
    .end local v6           #oplmnBuffer:[B
    .end local v7           #oplmnFile:Ljava/io/File;
    .end local v9           #output:Ljava/io/OutputStream;
    .end local v10           #url:Ljava/net/URL;
    .restart local v8       #output:Ljava/io/OutputStream;
    :cond_6
    if-eqz v8, :cond_7

    .line 212
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 214
    :cond_7
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 217
    :catch_2
    move-exception v1

    .line 218
    .restart local v1       #e:Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadOplmnFile , close the stream fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 217
    .end local v5           #oplmnAddr:Ljava/lang/String;
    .local v1, e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v1

    .line 218
    .local v1, e:Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadOplmnFile , close the stream fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 208
    .restart local v1       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadOplmnFile , get inputstream fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    if-eqz v8, :cond_8

    .line 212
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 214
    :cond_8
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 217
    :catch_5
    move-exception v1

    .line 218
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadOplmnFile , close the stream fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 211
    :goto_6
    if-eqz v8, :cond_9

    .line 212
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 214
    :cond_9
    if-eqz v2, :cond_a

    .line 215
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 219
    :cond_a
    :goto_7
    throw v11

    .line 217
    :catch_6
    move-exception v1

    .line 218
    .restart local v1       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadOplmnFile , close the stream fail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_7

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v0       #connection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v5       #oplmnAddr:Ljava/lang/String;
    .restart local v7       #oplmnFile:Ljava/io/File;
    .restart local v9       #output:Ljava/io/OutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    goto :goto_6

    .line 207
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    goto :goto_5

    .line 205
    .end local v0           #connection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v5           #oplmnAddr:Ljava/lang/String;
    .end local v7           #oplmnFile:Ljava/io/File;
    .end local v10           #url:Ljava/net/URL;
    :catch_8
    move-exception v1

    goto/16 :goto_1
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 459
    .local v1, calendar:Ljava/util/Calendar;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getInformation(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "document"
    .parameter "attribute"

    .prologue
    .line 398
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 399
    .local v0, list:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 400
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getMd5Digest([B)Ljava/lang/String;
    .locals 10
    .parameter "content"

    .prologue
    .line 380
    const/4 v7, 0x0

    .line 382
    .local v7, md5:Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 387
    :goto_0
    invoke-virtual {v7, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 388
    .local v3, diget:[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v8, v3

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 389
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 390
    .local v1, b:B
    and-int/lit16 v8, v1, 0xf0

    ushr-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    and-int/lit8 v8, v1, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v3           #diget:[B
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v4

    .line 384
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMD5Digest, initialize MessageDigest fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #arr$:[B
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #diget:[B
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method static getOplmnFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/oplmn.plmn"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, oplmnFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getOplmnInfo(Ljavax/net/ssl/SSLContext;Ljava/net/URL;)Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    .locals 11
    .parameter "sslContext"
    .parameter "url"

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getWebContent(Ljavax/net/ssl/SSLContext;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 106
    const/4 v5, 0x0

    .line 108
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 110
    .local v4, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 112
    .local v2, document:Lorg/w3c/dom/Document;
    :try_start_2
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 113
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 121
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    if-eqz v2, :cond_2

    .line 122
    :try_start_3
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 123
    new-instance v7, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;

    invoke-direct {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;-><init>()V

    .line 124
    .local v7, oplmnInfo:Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    const-string v8, "version"

    invoke-static {v2, v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getInformation(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mVersion:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->access$002(Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    const-string v8, "addr"

    invoke-static {v2, v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getInformation(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mAddr:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->access$102(Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    const-string v8, "md5"

    invoke-static {v2, v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getInformation(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mMd5:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->access$202(Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OPLMN info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    if-eqz v6, :cond_0

    .line 133
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 141
    .end local v2           #document:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #oplmnInfo:Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    :cond_0
    :goto_1
    return-object v7

    .line 114
    .restart local v2       #document:Lorg/w3c/dom/Document;
    .restart local v4       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 115
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failure to create documentBuilder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 131
    .end local v2           #document:Lorg/w3c/dom/Document;
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_2
    if-eqz v5, :cond_1

    .line 133
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 136
    :cond_1
    :goto_3
    throw v8

    .line 116
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v2       #document:Lorg/w3c/dom/Document;
    .restart local v4       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 117
    .local v3, e:Lorg/xml/sax/SAXException;
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failure to parse document: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 119
    .local v3, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failure to parse document: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 134
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #oplmnInfo:Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    :catch_3
    move-exception v3

    .line 135
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close the stream fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #oplmnInfo:Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    :cond_2
    if-eqz v6, :cond_3

    .line 133
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 141
    .end local v2           #document:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #is:Ljava/io/InputStream;
    :cond_3
    :goto_4
    const/4 v7, 0x0

    goto :goto_1

    .line 134
    .restart local v2       #document:Lorg/w3c/dom/Document;
    .restart local v4       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    .line 135
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close the stream fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 134
    .end local v2           #document:Lorg/w3c/dom/Document;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    .line 135
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close the stream fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 131
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto/16 :goto_2
.end method

.method static getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 65
    :try_start_0
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 66
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/sdcard/ca.crt"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4

    .line 67
    .local v1, caInput:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 72
    .local v0, ca:Ljava/security/cert/Certificate;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 75
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, keyStoreType:Ljava/lang/String;
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 77
    .local v4, keyStore:Ljava/security/KeyStore;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 78
    const-string v10, "ca"

    invoke-virtual {v4, v10, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 80
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, tmfAlgorithm:Ljava/lang/String;
    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 82
    .local v7, tmf:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v7, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 84
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 85
    .local v6, sSslContext:Ljavax/net/ssl/SSLContext;
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 99
    .end local v0           #ca:Ljava/security/cert/Certificate;
    .end local v1           #caInput:Ljava/io/InputStream;
    .end local v4           #keyStore:Ljava/security/KeyStore;
    .end local v5           #keyStoreType:Ljava/lang/String;
    .end local v6           #sSslContext:Ljavax/net/ssl/SSLContext;
    .end local v7           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v8           #tmfAlgorithm:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 72
    .restart local v1       #caInput:Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_4

    .line 88
    .end local v1           #caInput:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 89
    .local v3, e:Ljava/security/cert/CertificateException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get the trust to the url fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    .end local v3           #e:Ljava/security/cert/CertificateException;
    :cond_0
    :goto_1
    move-object v6, v9

    .line 99
    goto :goto_0

    .line 90
    :catch_1
    move-exception v3

    .line 91
    .local v3, e:Ljava/security/KeyStoreException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get the trust to the url fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v3           #e:Ljava/security/KeyStoreException;
    :catch_2
    move-exception v3

    .line 93
    .local v3, e:Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get the trust to the url fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 95
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get the trust to the url fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v3

    .line 97
    .local v3, e:Ljava/security/KeyManagementException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get the trust to the url fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getValue(Ljava/lang/String;I)[I
    .locals 4
    .parameter "version"
    .parameter "index"

    .prologue
    .line 471
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 472
    .local v1, valueIndex:[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 477
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 478
    const/4 v2, 0x1

    aput p1, v1, v2

    .line 479
    return-object v1
.end method

.method private static getWebContent(Ljavax/net/ssl/SSLContext;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .parameter "sslContext"
    .parameter "url"

    .prologue
    .line 348
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    .local v2, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 350
    .local v3, conn:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, br:Ljava/io/BufferedReader;
    if-eqz v3, :cond_0

    .line 354
    :try_start_1
    const-string v6, "The content of the URL is : "

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    .line 355
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 357
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, outputContent:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 358
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "output :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 361
    .end local v5           #outputContent:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 362
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 369
    .end local v4           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 375
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #conn:Ljavax/net/ssl/HttpsURLConnection;
    :goto_3
    return-object v6

    .line 364
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #conn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v5       #outputContent:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 364
    .end local v5           #outputContent:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v6
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 370
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #conn:Ljavax/net/ssl/HttpsURLConnection;
    :catch_1
    move-exception v4

    .line 371
    .local v4, e:Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create the url fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    .line 375
    .end local v4           #e:Ljava/net/MalformedURLException;
    :goto_5
    const/4 v6, 0x0

    goto :goto_3

    .line 372
    :catch_2
    move-exception v4

    .line 373
    .local v4, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect the url fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 364
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #conn:Ljavax/net/ssl/HttpsURLConnection;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 361
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #outputContent:Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 483
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OplmnUpdater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method static parseOplmnAsModemFormat(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 12
    .parameter "version"
    .parameter "rawData"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v2, oplmn:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 271
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v7, v1, 0x5

    array-length v8, p1

    if-gt v7, v8, :cond_3

    .line 272
    aget-byte v4, p1, v1

    .line 273
    .local v4, temp1:B
    add-int/lit8 v7, v1, 0x1

    aget-byte v5, p1, v7

    .line 274
    .local v5, temp2:B
    add-int/lit8 v7, v1, 0x2

    aget-byte v6, p1, v7

    .line 275
    .local v6, temp3:B
    shl-int/lit8 v7, v4, 0x4

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 276
    add-int/lit8 v7, v1, 0x1

    shl-int/lit8 v8, v5, 0x4

    and-int/lit16 v8, v8, 0xf0

    and-int/lit8 v9, v6, 0xf

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 277
    add-int/lit8 v7, v1, 0x2

    and-int/lit16 v8, v6, 0xf0

    shr-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 278
    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v7, "%02x"

    new-array v8, v11, [Ljava/lang/Object;

    aget-byte v9, p1, v1

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v7, "%02x"

    new-array v8, v11, [Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p1, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v7, "%02x"

    new-array v8, v11, [Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, p1, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v7, v1, 0x3

    aget-byte v7, p1, v7

    or-int/lit8 v7, v7, 0x0

    if-nez v7, :cond_1

    .line 284
    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :goto_1
    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v7, v1, 0x4

    aget-byte v7, p1, v7

    or-int/lit8 v7, v7, 0x0

    if-nez v7, :cond_2

    .line 290
    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_2
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0xf

    if-ne v7, v8, :cond_0

    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 271
    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_0

    .line 286
    :cond_1
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    :cond_2
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 299
    .end local v4           #temp1:B
    .end local v5           #temp2:B
    .end local v6           #temp3:B
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v3, oplmnInfo:Ljava/lang/StringBuilder;
    const-string v7, "\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method static readOplmnFile(Ljava/io/File;)[B
    .locals 9
    .parameter "file"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 238
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x7d0

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 239
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 240
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .line 241
    .local v4, ch:I
    :goto_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 242
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v6

    .line 249
    if-eqz v3, :cond_1

    .line 251
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 256
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 258
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v0, v1

    .line 264
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #ch:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_3
    return-object v6

    .line 252
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #ch:I
    :catch_0
    move-exception v5

    .line 253
    .local v5, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readOplmnFile, read file the inputstream close fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 260
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readOplmnFile, read file the outputstream close fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #ch:I
    .end local v5           #e:Ljava/io/IOException;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v5

    .line 247
    .restart local v5       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readOplmnFile, read file fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 249
    if-eqz v2, :cond_3

    .line 251
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 256
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    .line 258
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 264
    :cond_4
    :goto_6
    const/4 v6, 0x0

    goto :goto_3

    .line 252
    :catch_3
    move-exception v5

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readOplmnFile, read file the inputstream close fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 259
    :catch_4
    move-exception v5

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readOplmnFile, read file the outputstream close fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 249
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v2, :cond_5

    .line 251
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 256
    :cond_5
    :goto_8
    if-eqz v0, :cond_6

    .line 258
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 261
    :cond_6
    :goto_9
    throw v6

    .line 252
    :catch_5
    move-exception v5

    .line 253
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readOplmnFile, read file the inputstream close fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_8

    .line 259
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 260
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readOplmnFile, read file the outputstream close fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_9

    .line 249
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 246
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method static respondResult(Landroid/content/Context;Ljavax/net/ssl/SSLContext;Ljava/net/URL;Ljava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "sslContext"
    .parameter "url"
    .parameter "version"
    .parameter "result"

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 311
    .local v0, conn:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 312
    if-eqz v0, :cond_0

    .line 314
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v3, out:Ljava/io/DataOutputStream;
    :try_start_2
    invoke-static {p0, p3, p4}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->createXml(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, postData:Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 317
    .local v5, xmlbyte:[B
    const/16 v6, 0x1770

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 318
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 319
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 320
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 321
    const-string v6, "Charset"

    const-string v7, "UTF-8"

    invoke-virtual {v0, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "Content-Length"

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "Content-Type"

    const-string v7, "text/xml; charset=UTF-8"

    invoke-virtual {v0, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 325
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v2, v3

    .line 335
    .end local v3           #out:Ljava/io/DataOutputStream;
    .end local v4           #postData:Ljava/lang/String;
    .end local v5           #xmlbyte:[B
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 337
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 343
    .end local v0           #conn:Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    :goto_1
    return-void

    .line 326
    .restart local v0       #conn:Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseResult, post response fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 330
    .end local v0           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseResult, post response fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    if-eqz v2, :cond_1

    .line 337
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 338
    :catch_2
    move-exception v1

    .line 339
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseResult, close outpuststream fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #conn:Ljavax/net/ssl/HttpsURLConnection;
    :catch_3
    move-exception v1

    .line 339
    .restart local v1       #e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseResult, close outpuststream fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    .end local v0           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 333
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseResult, post response fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 335
    if-eqz v2, :cond_1

    .line 337
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 338
    :catch_5
    move-exception v1

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseResult, close outpuststream fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 335
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_2

    .line 337
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 340
    :cond_2
    :goto_5
    throw v6

    .line 338
    :catch_6
    move-exception v1

    .line 339
    .restart local v1       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseResult, close outpuststream fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 335
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v0       #conn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 330
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .line 326
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method
