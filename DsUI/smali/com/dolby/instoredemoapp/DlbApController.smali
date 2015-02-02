.class public Lcom/dolby/instoredemoapp/DlbApController;
.super Ljava/lang/Object;
.source "DlbApController.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;,
        Lcom/dolby/instoredemoapp/DlbApController$APMessage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DlbApController"


# instance fields
.field private mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

.field private mApInfoStream:Ljava/io/InputStream;

.field private mContext:Landroid/content/Context;

.field private mDsClient:Landroid/dolby/DsClient;

.field private mDsClientSettingsDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;",
            ">;"
        }
    .end annotation
.end field

.field private mDsConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/DlbApController$APMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevDsOnStat:Z

.field private mPrevIeqPreset:I

.field private mPrevProfile:I

.field private mProfilesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    .line 53
    iput-boolean v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    .line 54
    iput-boolean v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevDsOnStat:Z

    .line 62
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    invoke-direct {v1}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;-><init>()V

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    .line 64
    new-instance v1, Landroid/dolby/DsClient;

    invoke-direct {v1}, Landroid/dolby/DsClient;-><init>()V

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    .line 67
    :try_start_0
    const-string v1, "DlbApController"

    const-string v2, "going to bind the DS service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v1, p0}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DlbApController"

    const-string v2, "Consturction of DlbApController, bindDsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private calMsgDelaytime(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .parameter "timestamp"

    .prologue
    const/4 v10, -0x1

    const/16 v12, 0x3a

    const/4 v11, 0x0

    .line 505
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 506
    .local v4, ret:Ljava/lang/Integer;
    move-object v7, p1

    .line 509
    .local v7, tmp:Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 510
    .local v0, colonIdx:I
    if-ne v0, v10, :cond_0

    .line 511
    const-string v8, "DlbApController"

    const-string v9, "the format of the timestamp is not valid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 538
    :goto_0
    return-object v8

    .line 514
    :cond_0
    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, sub:Ljava/lang/String;
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hour = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 517
    .local v1, hour:Ljava/lang/Integer;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 520
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 521
    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 522
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "min = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 524
    .local v3, minute:Ljava/lang/Integer;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 527
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 528
    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 529
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sec = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 531
    .local v5, second:Ljava/lang/Integer;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 536
    .local v2, millisecond:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 537
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v4

    .line 538
    goto/16 :goto_0
.end method

.method private handleDialogEnhancer(Ljava/lang/String;)Z
    .locals 9
    .parameter "deh"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    const-string v6, "DlbApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDialogEnhancer, deh = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, on:Z
    const-string v6, "on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    const/4 v2, 0x1

    .line 381
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v3

    .line 382
    .local v3, profile:I
    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v3}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 383
    .local v0, dscs:Landroid/dolby/DsClientSettings;
    invoke-virtual {v0, v2}, Landroid/dolby/DsClientSettings;->setDialogEnhancerOn(Z)V

    .line 384
    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v3, v0}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0           #dscs:Landroid/dolby/DsClientSettings;
    .end local v3           #profile:I
    :goto_1
    return v4

    .line 370
    :cond_0
    const-string v6, "off"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 371
    const/4 v2, 0x0

    goto :goto_0

    .line 372
    :cond_1
    const-string v6, "unset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 373
    const-string v5, "DlbApController"

    const-string v6, "value does not change"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    :cond_2
    const-string v4, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DlbApController.handleDialogEnhancer, invalid value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 377
    goto :goto_1

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DlbApController"

    const-string v6, "DlbApController.handleDialogEnhancer,fail to call setProfileSettings"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    .line 388
    goto :goto_1
.end method

.method private handleIntelligentEq(Ljava/lang/String;)Z
    .locals 8
    .parameter "sieq"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 294
    const-string v5, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleIntelligentEq, ieq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, -0x1

    .line 296
    .local v1, ieq:I
    const-string v5, "off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 328
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v2

    .line 329
    .local v2, profile:I
    iget-object v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2, v1}, Landroid/dolby/DsClient;->setIeqPreset(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2           #profile:I
    :goto_1
    return v3

    .line 298
    :cond_0
    const-string v5, "Open"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    const/4 v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    const-string v5, "Rich"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    const/4 v1, 0x2

    goto :goto_0

    .line 302
    :cond_2
    const-string v5, "Focused"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    const/4 v1, 0x3

    goto :goto_0

    .line 304
    :cond_3
    const-string v5, "Warm"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    const/4 v1, 0x4

    .line 307
    const-string v4, "DlbApController"

    const-string v5, "Not supported yet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 309
    :cond_4
    const-string v5, "Bright"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 310
    const/4 v1, 0x5

    .line 312
    const-string v4, "DlbApController"

    const-string v5, "Not supported yet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    :cond_5
    const-string v5, "Balanced"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    const/4 v1, 0x6

    .line 317
    const-string v4, "DlbApController"

    const-string v5, "Not supported yet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_6
    const-string v5, "unset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 320
    const-string v4, "DlbApController"

    const-string v5, "value does not change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    :cond_7
    const-string v3, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleIntelligentEq, invalid value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 324
    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DlbApController"

    const-string v5, "DlbApController.handleIntelligentEq, fail to call setIeqPreset"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    .line 333
    goto/16 :goto_1
.end method

.method private handleMasterControl(Ljava/lang/String;)Z
    .locals 8
    .parameter "mastercontrol"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    const-string v5, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMasterControl, mastercontrol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v1, 0x0

    .line 454
    .local v1, on:Z
    const-string v5, "on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 455
    const/4 v1, 0x1

    .line 467
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v1}, Landroid/dolby/DsClient;->setDsOnChecked(Z)I

    move-result v2

    .line 470
    .local v2, result:I
    if-eqz v2, :cond_0

    .line 472
    const-string v3, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleMasterControl, setDsOnChecked failed due to return code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 482
    .end local v2           #result:I
    :cond_0
    :goto_1
    return v3

    .line 456
    :cond_1
    const-string v5, "off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 457
    const/4 v1, 0x0

    goto :goto_0

    .line 458
    :cond_2
    const-string v5, "unset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 459
    const-string v4, "DlbApController"

    const-string v5, "no need to handle this"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    :cond_3
    const-string v3, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleMasterControl, invalid value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 463
    goto :goto_1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DlbApController"

    const-string v5, "DlbApController.handleMasterControl, setDsOnChecked failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    .line 479
    goto :goto_1
.end method

.method private handleProfileControl(Ljava/lang/String;)Z
    .locals 7
    .parameter "proctl"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 422
    const-string v4, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProfileControl, profilecontrol = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, -0x1

    .line 424
    .local v1, profile:I
    const-string v4, "Movie"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 441
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v1}, Landroid/dolby/DsClient;->setSelectedProfile(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_1
    return v2

    .line 426
    :cond_0
    const-string v4, "Music"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    const/4 v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    const-string v4, "Game"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    const/4 v1, 0x2

    goto :goto_0

    .line 430
    :cond_2
    const-string v4, "Voice"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 431
    const/4 v1, 0x3

    goto :goto_0

    .line 432
    :cond_3
    const-string v4, "unset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 433
    const-string v3, "DlbApController"

    const-string v4, "value not change!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 436
    :cond_4
    const-string v2, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DlbApController.handleProfileControl,invalid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 437
    goto :goto_1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DlbApController"

    const-string v4, "DlbApController.handleProfileControl,fail to call setProfileSettings"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 445
    goto :goto_1
.end method

.method private handleSurroundVirtualizer(Ljava/lang/String;)Z
    .locals 8
    .parameter "sv"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 394
    const-string v5, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSurroundVirtualizer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, on:Z
    const-string v5, "on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    const/4 v2, 0x1

    .line 408
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 411
    .local v0, dscs:Landroid/dolby/DsClientSettings;
    invoke-virtual {v0, v2}, Landroid/dolby/DsClientSettings;->setHeadphoneVirtualizerOn(Z)V

    .line 412
    iget-object v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #dscs:Landroid/dolby/DsClientSettings;
    :goto_1
    return v3

    .line 398
    :cond_0
    const-string v5, "off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    const/4 v2, 0x0

    goto :goto_0

    .line 400
    :cond_1
    const-string v5, "unset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 401
    const-string v4, "DlbApController"

    const-string v5, "value does not change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    :cond_2
    const-string v3, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleSurroundVirtualizer, invalid value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 405
    goto :goto_1

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DlbApController"

    const-string v5, "DlbApController.handleSurroundVirtualizer,fail to call setProfileSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    .line 416
    goto :goto_1
.end method

.method private handleTextInfo(Lcom/dolby/instoredemoapp/TextInfo;)V
    .locals 0
    .parameter "ti"

    .prologue
    .line 287
    return-void
.end method

.method private handleVolumeLeveler(Ljava/lang/String;)Z
    .locals 9
    .parameter "vl"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 339
    const-string v6, "DlbApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleVolumeLeveler, vl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, 0x0

    .line 341
    .local v2, on:Z
    const-string v6, "on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    const/4 v2, 0x1

    .line 353
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v3

    .line 354
    .local v3, profile:I
    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v3}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 355
    .local v0, dscs:Landroid/dolby/DsClientSettings;
    invoke-virtual {v0, v2}, Landroid/dolby/DsClientSettings;->setVolumeLevellerOn(Z)V

    .line 356
    iget-object v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v3, v0}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v0           #dscs:Landroid/dolby/DsClientSettings;
    .end local v3           #profile:I
    :goto_1
    return v4

    .line 343
    :cond_0
    const-string v6, "off"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    const/4 v2, 0x0

    goto :goto_0

    .line 345
    :cond_1
    const-string v6, "unset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    const-string v5, "DlbApController"

    const-string v6, "value does not change"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :cond_2
    const-string v4, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DlbApController.handleVolumeLeveler, invalid value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 350
    goto :goto_1

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DlbApController"

    const-string v6, "DlbApController.handleVolumeLeveler,fail to call setProfileSettings"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    .line 360
    goto :goto_1
.end method

.method private initMsgList()V
    .locals 10

    .prologue
    .line 486
    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 487
    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 488
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    .line 490
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    .line 491
    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    invoke-virtual {v7}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->getAutoPilotMetadata()Ljava/util/ArrayList;

    move-result-object v1

    .line 492
    .local v1, aplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/dolby/instoredemoapp/AutoPilotItem;>;"
    const-string v7, "DlbApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aplist.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 494
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/instoredemoapp/AutoPilotItem;

    .line 495
    .local v0, apitem:Lcom/dolby/instoredemoapp/AutoPilotItem;
    const-string v7, "DlbApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "obj of msg: \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7dc

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 497
    .local v6, msg:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getTimeStamp()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/dolby/instoredemoapp/DlbApController;->calMsgDelaytime(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    .line 498
    .local v3, delaytime:J
    new-instance v2, Lcom/dolby/instoredemoapp/DlbApController$APMessage;

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/dolby/instoredemoapp/DlbApController$APMessage;-><init>(Lcom/dolby/instoredemoapp/DlbApController;JLandroid/os/Message;)V

    .line 499
    .local v2, apmsg:Lcom/dolby/instoredemoapp/DlbApController$APMessage;
    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 501
    .end local v0           #apitem:Lcom/dolby/instoredemoapp/AutoPilotItem;
    .end local v2           #apmsg:Lcom/dolby/instoredemoapp/DlbApController$APMessage;
    .end local v3           #delaytime:J
    .end local v6           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public isDsConnected()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    return v0
.end method

.method public onClientConnected()V
    .locals 2

    .prologue
    .line 543
    const-string v0, "DlbApController"

    const-string v1, "onClientConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    .line 545
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "DlbApController"

    const-string v1, "onClientDisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 557
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 577
    return-void
.end method

.method public onExit()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 92
    :try_start_0
    const-string v1, "DlbApController"

    const-string v2, "about to unbind DS service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsConnected:Z

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DlbApController"

    const-string v2, "DlbApController.onExit(), unBindDsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 562
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 567
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 572
    return-void
.end method

.method public processApMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 252
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processApMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 255
    const-string v3, "DlbApController"

    const-string v4, "the msg.obj is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return v2

    .line 258
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolby/instoredemoapp/AutoPilotItem;

    .line 259
    .local v0, apitem:Lcom/dolby/instoredemoapp/AutoPilotItem;
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getMasterControlValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleMasterControl(Ljava/lang/String;)Z

    move-result v1

    .line 260
    .local v1, ret:Z
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMasterControl, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v1, :cond_1

    .line 264
    const/4 v2, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getProfileControlValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleProfileControl(Ljava/lang/String;)Z

    move-result v1

    .line 267
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleProfileControl, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getSurroundVirtualizerValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleSurroundVirtualizer(Ljava/lang/String;)Z

    move-result v1

    .line 269
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSurroundVirtualizer, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getDialogEnahancerValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleDialogEnhancer(Ljava/lang/String;)Z

    move-result v1

    .line 271
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDialogEnhancer, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getVolumeLevelerValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleVolumeLeveler(Ljava/lang/String;)Z

    move-result v1

    .line 273
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVolumeLeveler, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getIntelligenEqValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleIntelligentEq(Ljava/lang/String;)Z

    move-result v1

    .line 275
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntelligentEq, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getDisplayText()Lcom/dolby/instoredemoapp/TextInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolby/instoredemoapp/DlbApController;->handleTextInfo(Lcom/dolby/instoredemoapp/TextInfo;)V

    goto/16 :goto_0
.end method

.method public restoreAllDs1Data()V
    .locals 8

    .prologue
    const/16 v7, 0x7e1

    .line 215
    const-string v4, "DlbApController"

    const-string v5, "restoreAllDs1Data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget-boolean v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevDsOnStat:Z

    invoke-virtual {v4, v5}, Landroid/dolby/DsClient;->setDsOnChecked(Z)I

    move-result v3

    .line 220
    .local v3, result:I
    if-eqz v3, :cond_1

    .line 222
    const-string v4, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.restoreAllDs1Data, setDsOnChecked failed due to return code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v3           #result:I
    :cond_0
    :goto_0
    return-void

    .line 225
    .restart local v3       #result:I
    :cond_1
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevProfile:I

    invoke-virtual {v4, v5}, Landroid/dolby/DsClient;->setSelectedProfile(I)V

    .line 226
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget v5, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevProfile:I

    iget v6, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevIeqPreset:I

    invoke-virtual {v4, v5, v6}, Landroid/dolby/DsClient;->setIeqPreset(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v3           #result:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClientSettingsDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClientSettingsDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;

    .line 236
    .local v0, dscd:Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;
    :try_start_1
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget v5, v0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mProfile:I

    iget v6, v0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mIeqPreset:I

    invoke-virtual {v4, v5, v6}, Landroid/dolby/DsClient;->setIeqPreset(II)V

    .line 237
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget v5, v0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mProfile:I

    iget-object v6, v0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mDsClientSettings:Landroid/dolby/DsClientSettings;

    invoke-virtual {v4, v5, v6}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    .end local v0           #dscd:Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DlbApController"

    const-string v5, "DlbApController.restoreAllDs1Data,fail to call setDsOnChecked or setSelectedProfile or setIeqPreset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 238
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dscd:Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "DlbApController"

    const-string v5, "DlbApController.restoreAllDs1Data, fail to call setIeqPreset or setProfileSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public saveCurrentDs1Data()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 133
    const-string v11, "DlbApController"

    const-string v13, "saveCurrentDs1Data"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v11}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v11

    iput-boolean v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevDsOnStat:Z

    .line 136
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v11}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v11

    iput v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevProfile:I

    .line 137
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget v13, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevProfile:I

    invoke-virtual {v11, v13}, Landroid/dolby/DsClient;->getIeqPreset(I)I

    move-result v11

    iput v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevIeqPreset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPrevDsOnStat = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevDsOnStat:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPrevProfile = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevProfile:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPrevIeqPreset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/dolby/instoredemoapp/DlbApController;->mPrevIeqPreset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    .line 148
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    invoke-virtual {v11}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->getAutoPilotMetadata()Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    .local v0, aplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/dolby/instoredemoapp/AutoPilotItem;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_6

    .line 150
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dolby/instoredemoapp/AutoPilotItem;

    .line 151
    .local v5, item:Lcom/dolby/instoredemoapp/AutoPilotItem;
    invoke-virtual {v5}, Lcom/dolby/instoredemoapp/AutoPilotItem;->getProfileControlValue()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, proctl:Ljava/lang/String;
    const-string v11, "unset"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 149
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .end local v0           #aplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/dolby/instoredemoapp/AutoPilotItem;>;"
    .end local v4           #i:I
    .end local v5           #item:Lcom/dolby/instoredemoapp/AutoPilotItem;
    .end local v7           #proctl:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 139
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "DlbApController"

    const-string v13, "DlbApController.saveCurrentDs1Data fail to call getDsOn or getSelectedProfile or getIeqPreset"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v11, v12

    .line 211
    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    return v11

    .line 155
    .restart local v0       #aplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/dolby/instoredemoapp/AutoPilotItem;>;"
    .restart local v4       #i:I
    .restart local v5       #item:Lcom/dolby/instoredemoapp/AutoPilotItem;
    .restart local v7       #proctl:Ljava/lang/String;
    :cond_1
    const/4 v8, -0x1

    .line 156
    .local v8, profile:I
    const-string v11, "Movie"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 157
    const/4 v8, 0x0

    .line 167
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 168
    .local v10, profileInt:Ljava/lang/Integer;
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 169
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v10           #profileInt:Ljava/lang/Integer;
    :cond_2
    const-string v11, "Music"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 159
    const/4 v8, 0x1

    goto :goto_3

    .line 160
    :cond_3
    const-string v11, "Game"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 161
    const/4 v8, 0x2

    goto :goto_3

    .line 162
    :cond_4
    const-string v11, "Voice"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 163
    const/4 v8, 0x3

    goto :goto_3

    .line 165
    :cond_5
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DlbApController.saveCurrentDs1Data, invalide profile name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 175
    .end local v5           #item:Lcom/dolby/instoredemoapp/AutoPilotItem;
    .end local v7           #proctl:Ljava/lang/String;
    .end local v8           #profile:I
    :cond_6
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mProfilesArray.size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mProfilesArray = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClientSettingsDataList:Ljava/util/ArrayList;

    .line 179
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 180
    .local v9, profileCnt:I
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "profileCnt = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_8

    .line 183
    :try_start_1
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 184
    .restart local v8       #profile:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_5
    const/4 v11, 0x4

    if-ge v6, v11, :cond_7

    .line 185
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v11, v8, v6}, Landroid/dolby/DsClient;->setIeqPreset(II)V

    .line 186
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v11, v4}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v1

    .line 187
    .local v1, dscs:Landroid/dolby/DsClientSettings;
    new-instance v2, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;

    invoke-direct {v2, p0, v8, v6, v1}, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;-><init>(Lcom/dolby/instoredemoapp/DlbApController;IILandroid/dolby/DsClientSettings;)V

    .line 188
    .local v2, dscsdata:Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;
    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClientSettingsDataList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 182
    .end local v1           #dscs:Landroid/dolby/DsClientSettings;
    .end local v2           #dscsdata:Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 191
    .end local v6           #j:I
    .end local v8           #profile:I
    :catch_1
    move-exception v3

    .line 192
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "DlbApController"

    const-string v13, "DlbApController.saveCurrentDs1Data, fail to call setIeqPreset"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v11, v12

    .line 194
    goto/16 :goto_2

    .line 196
    .end local v3           #e:Ljava/lang/Exception;
    :cond_8
    const-string v11, "DlbApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the size of mDsClientSettingsDataList = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClientSettingsDataList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v9, :cond_9

    .line 203
    :try_start_2
    iget-object v13, p0, Lcom/dolby/instoredemoapp/DlbApController;->mDsClient:Landroid/dolby/DsClient;

    iget-object v11, p0, Lcom/dolby/instoredemoapp/DlbApController;->mProfilesArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/dolby/DsClient;->resetProfile(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 204
    :catch_2
    move-exception v3

    .line 205
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "DlbApController"

    const-string v13, "DlbApController.saveCurrentDs1Data, fail to call resetProfile"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v11, v12

    .line 207
    goto/16 :goto_2

    .line 211
    .end local v3           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_2
.end method

.method public sendApMessages()V
    .locals 6

    .prologue
    .line 101
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "DlbApController"

    const-string v3, "the un-handled messages will be removed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 106
    :cond_0
    const-string v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duaration of the media is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;

    .line 109
    .local v0, apmsg:Lcom/dolby/instoredemoapp/DlbApController$APMessage;
    const-string v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "will send ap msg after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->delayTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->message:Landroid/os/Message;

    iget-wide v4, v0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->delayTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0           #apmsg:Lcom/dolby/instoredemoapp/DlbApController$APMessage;
    :cond_1
    return-void
.end method

.method public setApInfoFile(Ljava/io/InputStream;)V
    .locals 2
    .parameter "apstream"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    .line 116
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/dolby/instoredemoapp/DlbApInfoExtractor;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApInfoExtractor;->setApInfoFile(Ljava/io/InputStream;)V

    .line 117
    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbApController;->initMsgList()V

    .line 118
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    .line 87
    :cond_0
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    :cond_0
    return-void
.end method
