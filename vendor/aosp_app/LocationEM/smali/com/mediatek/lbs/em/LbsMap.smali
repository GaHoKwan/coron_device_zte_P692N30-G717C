.class public Lcom/mediatek/lbs/em/LbsMap;
.super Landroid/app/Activity;
.source "LbsMap.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em/LbsMap$LatLng;,
        Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;
    }
.end annotation


# static fields
.field private static final MAP_URL:Ljava/lang/String; = "file:///android_asset/demo.html"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonMenu:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnable:Z

.field mLocationInfo:[Lcom/mediatek/lbs/em/LocationInfo;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMenuPopup:Landroid/widget/PopupMenu;

.field private mRecentLocation:Landroid/location/Location;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mHandler:Landroid/os/Handler;

    .line 52
    iput-boolean v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mIsEnable:Z

    .line 56
    const/4 v0, 0x4

    new-array v6, v0, [Lcom/mediatek/lbs/em/LocationInfo;

    new-instance v0, Lcom/mediatek/lbs/em/LocationInfo;

    const-string v1, "Taipei"

    const-wide v2, 0x403917505d0fa58fL

    const-wide v4, 0x405e63d3c3611340L

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/lbs/em/LocationInfo;-><init>(Ljava/lang/String;DD)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/mediatek/lbs/em/LocationInfo;

    const-string v1, "China"

    const-wide v2, 0x4041ee4adff822bcL

    const-wide v4, 0x405a0c7fcb923a2aL

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/lbs/em/LocationInfo;-><init>(Ljava/lang/String;DD)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/mediatek/lbs/em/LocationInfo;

    const-string v1, "Beijing"

    const-wide v2, 0x4043f3bd273d5babL

    const-wide v4, 0x405d1a12d77318fcL

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/lbs/em/LocationInfo;-><init>(Ljava/lang/String;DD)V

    aput-object v0, v6, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/mediatek/lbs/em/LocationInfo;

    const-string v1, "USA"

    const-wide v2, 0x40428b8cfbfc6541L

    const-wide v4, -0x3fa812617c1bda51L

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/lbs/em/LocationInfo;-><init>(Ljava/lang/String;DD)V

    aput-object v0, v6, v7

    iput-object v6, p0, Lcom/mediatek/lbs/em/LbsMap;->mLocationInfo:[Lcom/mediatek/lbs/em/LocationInfo;

    .line 142
    new-instance v0, Lcom/mediatek/lbs/em/LbsMap$3;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsMap$3;-><init>(Lcom/mediatek/lbs/em/LbsMap;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->updateMyPosition()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsMap;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsMap;->openDialogLatlng(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/lbs/em/LbsMap;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->openDialogAddr()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/em/LbsMap;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/lbs/em/LbsMap;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsMap;->loadNmea(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/lbs/em/LbsMap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mIsEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/lbs/em/LbsMap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->setupWebView()V

    return-void
.end method

.method private countNumOfRMC(Ljava/lang/String;)I
    .locals 5
    .parameter "nmeaFile"

    .prologue
    .line 484
    const/4 v3, 0x0

    .line 486
    .local v3, numOfFix:I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 489
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 490
    const-string v4, "$GPRMC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "ERR: FileNotFoundException"

    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 504
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return v3

    .line 497
    :catch_1
    move-exception v1

    .line 498
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ERR: IOException"

    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 500
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ERR: Exception"

    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 203
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/mediatek/lbs/em/LbsMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 204
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 205
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const/4 v2, 0x1

    .line 208
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRmcValid(Ljava/lang/String;Lcom/mediatek/lbs/em/LbsMap$LatLng;)Z
    .locals 19
    .parameter "rmc"
    .parameter "latlng"

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    const/4 v15, 0x0

    .line 597
    :goto_0
    return v15

    .line 511
    :cond_0
    move-object/from16 v11, p1

    .line 516
    .local v11, tmp1:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 517
    .local v13, utc:D
    :try_start_0
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 518
    .local v10, status:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 519
    .local v2, lat:D
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 520
    .local v4, latDirection:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 521
    .local v5, lng:D
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 524
    .local v7, lngDirection:Ljava/lang/String;
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 525
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 526
    .local v9, nextComma:I
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 527
    .local v12, tmp2:Ljava/lang/String;
    if-lez v9, :cond_1

    .line 528
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 532
    :cond_1
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 533
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 534
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 535
    if-lez v9, :cond_2

    .line 536
    move-object v10, v12

    .line 540
    :cond_2
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 541
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 542
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 543
    if-lez v9, :cond_3

    .line 544
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 548
    :cond_3
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 549
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 550
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 551
    if-lez v9, :cond_4

    .line 552
    move-object v4, v12

    .line 556
    :cond_4
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 557
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 558
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 559
    if-lez v9, :cond_5

    .line 560
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 564
    :cond_5
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 565
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 566
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 567
    if-lez v9, :cond_6

    .line 568
    move-object v7, v12

    .line 571
    :cond_6
    const-wide/high16 v15, 0x4059

    div-double/2addr v2, v15

    .line 572
    double-to-int v8, v2

    .line 573
    .local v8, mm:I
    int-to-double v15, v8

    sub-double/2addr v2, v15

    .line 574
    const-wide/high16 v15, 0x4018

    div-double v15, v2, v15

    const-wide/high16 v17, 0x4024

    mul-double v2, v15, v17

    .line 575
    int-to-double v15, v8

    add-double/2addr v2, v15

    .line 576
    const-string v15, "N"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 577
    neg-double v2, v2

    .line 580
    :cond_7
    const-wide/high16 v15, 0x4059

    div-double/2addr v5, v15

    .line 581
    double-to-int v8, v5

    .line 582
    int-to-double v15, v8

    sub-double/2addr v5, v15

    .line 583
    const-wide/high16 v15, 0x4018

    div-double v15, v5, v15

    const-wide/high16 v17, 0x4024

    mul-double v5, v15, v17

    .line 584
    int-to-double v15, v8

    add-double/2addr v5, v15

    .line 585
    const-string v15, "E"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 586
    neg-double v5, v5

    .line 589
    :cond_8
    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lat:D

    .line 590
    move-object/from16 v0, p2

    iput-wide v5, v0, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lng:D

    .line 592
    const-string v15, "A"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 593
    .end local v2           #lat:D
    .end local v4           #latDirection:Ljava/lang/String;
    .end local v5           #lng:D
    .end local v7           #lngDirection:Ljava/lang/String;
    .end local v8           #mm:I
    .end local v9           #nextComma:I
    .end local v10           #status:Ljava/lang/String;
    .end local v12           #tmp2:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 594
    .local v1, e:Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERR: isRmcValid, bad string="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 597
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private loadNmea(Ljava/lang/String;)V
    .locals 14
    .parameter "nmeaFile"

    .prologue
    const/4 v13, 0x1

    .line 405
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    const-string v11, "javascript:removeNmeaPoint()"

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 407
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 408
    .local v3, fileLen:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 411
    const-wide/32 v10, 0x1312d00

    cmp-long v10, v3, v10

    if-lez v10, :cond_0

    .line 412
    const-string v10, "ERR: the file is too huge!!"

    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsMap;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ERR: The file is too huge"

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 480
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v7, Lcom/mediatek/lbs/em/LbsMap$LatLng;

    invoke-direct {v7, p0}, Lcom/mediatek/lbs/em/LbsMap$LatLng;-><init>(Lcom/mediatek/lbs/em/LbsMap;)V

    .line 420
    .local v7, latlng:Lcom/mediatek/lbs/em/LbsMap$LatLng;
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsMap;->countNumOfRMC(Ljava/lang/String;)I

    move-result v9

    .line 421
    .local v9, numOfFix:I
    const/4 v6, 0x1

    .line 423
    .local v6, interval:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The number of fix="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 424
    if-nez v9, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsMap;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ERR: No NMEA data"

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 430
    :cond_1
    const/16 v10, 0x64

    if-le v9, v10, :cond_5

    .line 431
    div-int/lit8 v6, v9, 0x64

    .line 432
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsMap;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The number of fix is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", only show the fix per "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sec"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 440
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 442
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 443
    .local v1, count:I
    const/4 v5, 0x1

    .line 445
    .local v5, first:Z
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    const-string v11, "javascript:setZoom(14)"

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 447
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, line:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 448
    const-string v10, "$GPRMC"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 450
    const-string v10, "$GPRMC"

    invoke-direct {p0, v8, v10}, Lcom/mediatek/lbs/em/LbsMap;->strstr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 451
    invoke-direct {p0, v8, v7}, Lcom/mediatek/lbs/em/LbsMap;->isRmcValid(Ljava/lang/String;Lcom/mediatek/lbs/em/LbsMap$LatLng;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 453
    if-eqz v5, :cond_3

    .line 454
    const/4 v5, 0x0

    .line 455
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:addNmeaInfo("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v7, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lat:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v7, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lng:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",\'Start Point\')"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 457
    :cond_3
    rem-int v10, v1, v6

    if-nez v10, :cond_4

    .line 458
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:addNmeaPoint("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v7, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lat:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v7, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lng:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 460
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v5           #first:Z
    .end local v8           #line:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsMap;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The number of fix is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 466
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #first:Z
    .restart local v8       #line:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 467
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 468
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 470
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v5           #first:Z
    .end local v8           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 471
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v10, "ERR: FileNotFoundException"

    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 473
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 474
    .local v2, e:Ljava/io/IOException;
    const-string v10, "ERR: IOException"

    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 476
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 477
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "ERR: Exception"

    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 228
    const-string v0, "LocationEM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private msleep(I)V
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 360
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private openDialogAddr()V
    .locals 12

    .prologue
    .line 253
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 254
    .local v5, dialog:Landroid/app/Dialog;
    const-string v11, "Go to somewhere"

    invoke-virtual {v5, v11}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    const v11, 0x7f03000a

    invoke-virtual {v5, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 257
    const v11, 0x7f0500c6

    invoke-virtual {v5, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 258
    .local v6, editText_addr:Landroid/widget/EditText;
    const v11, 0x7f0500c7

    invoke-virtual {v5, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 259
    .local v10, spinner:Landroid/widget/Spinner;
    const v11, 0x7f0500c1

    invoke-virtual {v5, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 260
    .local v3, button_ok:Landroid/widget/Button;
    const v11, 0x7f0500c2

    invoke-virtual {v5, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 262
    .local v2, button_cancel:Landroid/widget/Button;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v4, countries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mLocationInfo:[Lcom/mediatek/lbs/em/LocationInfo;

    .local v1, arr$:[Lcom/mediatek/lbs/em/LocationInfo;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v8, v1, v7

    .line 264
    .local v8, info:Lcom/mediatek/lbs/em/LocationInfo;
    iget-object v11, v8, Lcom/mediatek/lbs/em/LocationInfo;->country:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 266
    .end local v8           #info:Lcom/mediatek/lbs/em/LocationInfo;
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v0, p0, v11, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 268
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 269
    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    new-instance v11, Lcom/mediatek/lbs/em/LbsMap$5;

    invoke-direct {v11, p0, v10, v6}, Lcom/mediatek/lbs/em/LbsMap$5;-><init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 280
    new-instance v11, Lcom/mediatek/lbs/em/LbsMap$6;

    invoke-direct {v11, p0, v6, v5}, Lcom/mediatek/lbs/em/LbsMap$6;-><init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v11, Lcom/mediatek/lbs/em/LbsMap$7;

    invoke-direct {v11, p0, v5}, Lcom/mediatek/lbs/em/LbsMap$7;-><init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/app/Dialog;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 293
    return-void
.end method

.method private openDialogLatlng(Z)V
    .locals 10
    .parameter "warning"

    .prologue
    .line 296
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 297
    .local v3, dialog:Landroid/app/Dialog;
    const-string v7, "Go to lat/lng"

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    const v7, 0x7f03000b

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 300
    const v7, 0x7f0500bf

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 301
    .local v5, editText_lat:Landroid/widget/EditText;
    const v7, 0x7f0500c0

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 302
    .local v6, editText_lng:Landroid/widget/EditText;
    const v7, 0x7f0500c1

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 303
    .local v2, button_ok:Landroid/widget/Button;
    const v7, 0x7f0500c2

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 305
    .local v1, button_cancel:Landroid/widget/Button;
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    if-nez v7, :cond_0

    .line 306
    new-instance v7, Landroid/location/Location;

    const-string v8, "gps"

    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    .line 307
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    const-wide v8, 0x403915810624dd2fL

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 308
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    const-wide v8, 0x405e63d70a3d70a4L

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 311
    :cond_0
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const-string v7, "0123456789."

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 313
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const-string v7, "0123456789."

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 316
    new-instance v7, Lcom/mediatek/lbs/em/LbsMap$8;

    invoke-direct {v7, p0, v5, v6, v3}, Lcom/mediatek/lbs/em/LbsMap$8;-><init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    new-instance v7, Lcom/mediatek/lbs/em/LbsMap$9;

    invoke-direct {v7, p0, v3}, Lcom/mediatek/lbs/em/LbsMap$9;-><init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 336
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 337
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 338
    .local v0, button:Landroid/widget/Button;
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 339
    .local v4, dialog1:Landroid/app/Dialog;
    const-string v7, "OK"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v7, "Input lat/lng are incorrect"

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 342
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 343
    new-instance v7, Lcom/mediatek/lbs/em/LbsMap$10;

    invoke-direct {v7, p0, v4}, Lcom/mediatek/lbs/em/LbsMap$10;-><init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .end local v0           #button:Landroid/widget/Button;
    .end local v4           #dialog1:Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 353
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 354
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 355
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setupWebView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 176
    iput-boolean v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mIsEnable:Z

    .line 177
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mediatek/lbs/em/LbsMap$4;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsMap$4;-><init>(Lcom/mediatek/lbs/em/LbsMap;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/demo.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;-><init>(Lcom/mediatek/lbs/em/LbsMap;Lcom/mediatek/lbs/em/LbsMap$1;)V

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private strstr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "str1"
    .parameter "str2"

    .prologue
    const/4 v2, -0x1

    .line 391
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v2

    .line 400
    :cond_1
    :goto_0
    return v0

    .line 394
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 395
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 396
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, p2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 400
    goto :goto_0
.end method

.method private updateMyPosition()V
    .locals 5

    .prologue
    .line 235
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    .line 236
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    .line 238
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    const-wide v2, 0x403915810624dd2fL

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 239
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    const-wide v2, 0x405e63d70a3d70a4L

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v0, v1

    .line 247
    .local v0, acc:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    const-string v2, "javascript:enableTracking(true)"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:showMarkerOnly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 250
    return-void

    .line 245
    .end local v0           #acc:I
    :cond_1
    const/4 v0, -0x1

    .restart local v0       #acc:I
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMap;->setContentView(I)V

    .line 66
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mLocationManager:Landroid/location/LocationManager;

    .line 67
    const v1, 0x7f0500c4

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;

    .line 68
    const v1, 0x7f0500c5

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mButtonMenu:Landroid/widget/Button;

    .line 70
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMap;->mButtonMenu:Landroid/widget/Button;

    invoke-direct {v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    .line 71
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "My Position"

    invoke-interface {v1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 72
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "Move to lat/lng"

    invoke-interface {v1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 73
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "Go to Country or City"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 74
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "TAG - Enable"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 75
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "NMEA - Load"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 76
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "NMEA - Remove"

    invoke-interface {v1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 77
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, "NMEA - Show Path"

    invoke-interface {v1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 78
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x7

    const-string v3, "NMEA - Show Marker"

    invoke-interface {v1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 79
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "TRACKING - Enable"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 80
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 82
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMap$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMap$1;-><init>(Lcom/mediatek/lbs/em/LbsMap;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mButtonMenu:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMap$2;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMap$2;-><init>(Lcom/mediatek/lbs/em/LbsMap;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->setupWebView()V

    .line 135
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.lbs.em.loadnmea"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "com.mediatek.lbs.em.fix"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/lbs/em/LbsMap;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 368
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsMap;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsMap;->sendMessage(I)V

    .line 370
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 213
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 375
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 217
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 221
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 381
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMap;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsMap;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No Network connection available!!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 225
    return-void
.end method
