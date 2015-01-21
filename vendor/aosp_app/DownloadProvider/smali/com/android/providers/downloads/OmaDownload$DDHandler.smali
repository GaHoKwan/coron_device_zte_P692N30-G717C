.class Lcom/android/providers/downloads/OmaDownload$DDHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OmaDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/OmaDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DDHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DDHandler"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mComponent:Lcom/android/providers/downloads/OmaDescription;

.field private mDDUrl:Ljava/net/URL;

.field private mObjectUrlVisited:Z

.field private mRootVisited:Z

.field private mSizeVisited:Z

.field private mTypeVisited:Z

.field final synthetic this$0:Lcom/android/providers/downloads/OmaDownload;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/OmaDownload;Ljava/net/URL;Lcom/android/providers/downloads/OmaDescription;)V
    .locals 2
    .parameter
    .parameter "ddUrl"
    .parameter "component"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 269
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->this$0:Lcom/android/providers/downloads/OmaDownload;

    .line 270
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 260
    iput-boolean v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mRootVisited:Z

    .line 261
    iput-boolean v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mTypeVisited:Z

    .line 262
    iput-boolean v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mSizeVisited:Z

    .line 263
    iput-boolean v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mObjectUrlVisited:Z

    .line 264
    iput-object v1, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mBuilder:Ljava/lang/StringBuilder;

    .line 265
    iput-object v1, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    .line 266
    iput-object v1, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mDDUrl:Ljava/net/URL;

    .line 271
    iput-object p2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mDDUrl:Ljava/net/URL;

    .line 272
    iput-object p3, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    .line 273
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 435
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mDDUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 437
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mDDUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, sub:Ljava/lang/String;
    const-string v2, "\\s*/+.*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    .end local v0           #index:I
    .end local v1           #sub:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 442
    .restart local v0       #index:I
    .restart local v1       #sub:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 279
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 280
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3b7

    const/16 v8, 0x38a

    .line 285
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, url:Ljava/net/URL;
    const/4 v1, 0x0

    .line 290
    .local v1, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    if-eqz v6, :cond_1

    .line 291
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v6, "DDVersion"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getDDVersion()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 295
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v1}, Lcom/android/providers/downloads/OmaDescription;->setDDVersion(Ljava/lang/String;)V

    .line 297
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 299
    .local v4, val:D
    const-wide/high16 v6, 0x3ff0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    const/16 v7, 0x3b7

    invoke-virtual {v6, v7}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v4           #val:D
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 402
    :cond_1
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v9}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v6, "Description"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 309
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v1}, Lcom/android/providers/downloads/OmaDescription;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    const-string v6, "iconURI"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 313
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getIconUrl()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_0

    .line 315
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    .end local v2           #url:Ljava/net/URL;
    .local v3, url:Ljava/net/URL;
    :try_start_2
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v3}, Lcom/android/providers/downloads/OmaDescription;->setIconUrl(Ljava/net/URL;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_b

    move-object v2, v3

    .line 320
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_1
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto :goto_0

    .line 322
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_4
    const-string v6, "infoURL"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 323
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getInfoUrl()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_0

    .line 325
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 326
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :try_start_4
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v3}, Lcom/android/providers/downloads/OmaDescription;->setInfoUrl(Ljava/net/URL;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_a

    move-object v2, v3

    .line 330
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_0

    .line 327
    :catch_2
    move-exception v0

    .line 328
    .restart local v0       #e:Ljava/net/MalformedURLException;
    :goto_2
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto/16 :goto_0

    .line 332
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_5
    const-string v6, "installNotifyURI"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 333
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getInstallNotifyUrl()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_0

    .line 335
    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/OmaDownload$DDHandler;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 337
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :try_start_6
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v3}, Lcom/android/providers/downloads/OmaDescription;->setInstallNotifyUrl(Ljava/net/URL;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9

    move-object v2, v3

    .line 341
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_0

    .line 338
    :catch_3
    move-exception v0

    .line 339
    .restart local v0       #e:Ljava/net/MalformedURLException;
    :goto_3
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto/16 :goto_0

    .line 343
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_6
    const-string v6, "installParam"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 344
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getInstallParam()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 345
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v1}, Lcom/android/providers/downloads/OmaDescription;->setInstallParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_7
    const-string v6, "objectURI"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 348
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getObjectUrl()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_0

    .line 350
    :try_start_7
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/OmaDownload$DDHandler;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4

    .line 352
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :try_start_8
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v3}, Lcom/android/providers/downloads/OmaDescription;->setObjectUrl(Ljava/net/URL;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v2, v3

    .line 356
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_0

    .line 353
    :catch_4
    move-exception v0

    .line 354
    .restart local v0       #e:Ljava/net/MalformedURLException;
    :goto_4
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto/16 :goto_0

    .line 358
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_8
    const-string v6, "name"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 359
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 360
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v1}, Lcom/android/providers/downloads/OmaDescription;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_9
    const-string v6, "nextURL"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 363
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getNextUrl()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_0

    .line 365
    :try_start_9
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_5

    .line 366
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :try_start_a
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v3}, Lcom/android/providers/downloads/OmaDescription;->setNextUrl(Ljava/net/URL;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_7

    move-object v2, v3

    .line 370
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_0

    .line 367
    :catch_5
    move-exception v0

    .line 368
    .restart local v0       #e:Ljava/net/MalformedURLException;
    :goto_5
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto/16 :goto_0

    .line 372
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_a
    const-string v6, "size"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 373
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getSize()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 375
    :try_start_b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 377
    .local v4, val:I
    if-lez v4, :cond_b

    .line 378
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v4}, Lcom/android/providers/downloads/OmaDescription;->setSize(I)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 383
    .end local v4           #val:I
    :catch_6
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "DownloadManager/OMA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto/16 :goto_0

    .line 381
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #val:I
    :cond_b
    :try_start_c
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    const/16 v7, 0x38a

    invoke-virtual {v6, v7}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 388
    .end local v4           #val:I
    :cond_c
    const-string v6, "type"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 389
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v1}, Lcom/android/providers/downloads/OmaDescription;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_d
    const-string v6, "vendor"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 391
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6}, Lcom/android/providers/downloads/OmaDescription;->getVendor()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 392
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v1}, Lcom/android/providers/downloads/OmaDescription;->setVendor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :cond_e
    const-string v6, "media"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 395
    iget-boolean v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mObjectUrlVisited:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mSizeVisited:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mTypeVisited:Z

    if-nez v6, :cond_0

    .line 397
    :cond_f
    iget-object v6, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    invoke-virtual {v6, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto/16 :goto_0

    .line 367
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_5

    .line 353
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_4

    .line 338
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_3

    .line 327
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_2

    .line 317
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_1
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mBuilder:Ljava/lang/StringBuilder;

    .line 408
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 415
    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-boolean v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mRootVisited:Z

    if-nez v0, :cond_4

    .line 417
    iput-boolean v2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mRootVisited:Z

    .line 423
    :cond_0
    :goto_0
    const-string v0, "objectURI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iput-boolean v2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mObjectUrlVisited:Z

    .line 426
    :cond_1
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iput-boolean v2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mSizeVisited:Z

    .line 429
    :cond_2
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    iput-boolean v2, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mTypeVisited:Z

    .line 432
    :cond_3
    return-void

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDownload$DDHandler;->mComponent:Lcom/android/providers/downloads/OmaDescription;

    const/16 v1, 0x38a

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    goto :goto_0
.end method
