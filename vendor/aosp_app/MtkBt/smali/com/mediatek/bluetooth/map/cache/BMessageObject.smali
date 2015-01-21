.class public Lcom/mediatek/bluetooth/map/cache/BMessageObject;
.super Ljava/lang/Object;
.source "BMessageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCharset:I

.field private mContentSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

.field private mEncoding:I

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mFolderPath:Ljava/lang/String;

.field private mFracDeliver:I

.field private mHandle:J

.field private mLanguage:I

.field private mMsgType:I

.field private mName:Ljava/lang/String;

.field private mOrignator:Ljava/lang/String;

.field private mOrignatorSize:I

.field private mPartId:I

.field private mReadStatus:I

.field private mRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRetry:Z

.field private mTransparent:Z

.field private mVersion:I

.field private mWholeSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v2, "BMessageObject"

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->TAG:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mVersion:I

    .line 175
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 178
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    .line 185
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFileName:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mName:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->initCache()V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    .line 190
    new-instance v2, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mName:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;-><init>(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    .line 191
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "fail to create file"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/cache/BMessageObject;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    return-void
.end method

.method private clearMessagebuffer()V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 230
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initCache()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipientSize:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    .line 196
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 581
    const-string v0, "BMessageObject"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method


# virtual methods
.method public addContent([B)Z
    .locals 7
    .parameter "content"

    .prologue
    const/4 v2, 0x1

    .line 335
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    .line 340
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 350
    .local v1, stream:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 351
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 352
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-wide v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J

    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 355
    .end local v1           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 343
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mName:Ljava/lang/String;

    const v5, 0x8001

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 346
    .end local v1           #stream:Ljava/io/FileOutputStream;
    :cond_3
    const-string v3, "fail to get content"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    const/4 v2, 0x0

    goto :goto_0

    .line 357
    :catch_1
    move-exception v0

    .line 359
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/String;)Z
    .locals 3
    .parameter "recipient"

    .prologue
    const/4 v2, 0x1

    .line 255
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return v2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipientSize:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public fragmentIfNeccessary()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 421
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x7fff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 422
    iput v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    .line 434
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->saveDataToPool()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->removeOneFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    goto :goto_0

    .line 428
    :cond_1
    iput v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    goto :goto_0

    .line 431
    :cond_2
    iput v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    goto :goto_0
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mCharset:I

    return v0
.end method

.method public getContent([B)I
    .locals 3
    .parameter "content"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getContentFromFile(Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public getContentAfterSkip(Ljava/lang/String;[BIIJ)I
    .locals 7
    .parameter "filename"
    .parameter "content"
    .parameter "offset"
    .parameter "length"
    .parameter "skipoffset"

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 487
    .local v1, size:I
    if-eqz p1, :cond_0

    .line 488
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 493
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-virtual {v5, p5, p6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v3

    .line 494
    .local v3, skipnum:J
    invoke-virtual {v5, p2, p3, p4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 495
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .end local v3           #skipnum:J
    .end local v5           #stream:Ljava/io/FileInputStream;
    :goto_0
    move v2, v1

    .line 502
    .end local v1           #size:I
    .local v2, size:I
    :goto_1
    return v2

    .line 490
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const-string v6, "fail to get content"

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    .line 491
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_1

    .line 496
    .end local v2           #size:I
    .restart local v1       #size:I
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "fail to find file"

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 499
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentFromFile(Ljava/lang/String;[BII)I
    .locals 5
    .parameter "filename"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 466
    .local v1, size:I
    if-eqz p1, :cond_0

    .line 467
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 472
    .local v3, stream:Ljava/io/FileInputStream;
    invoke-virtual {v3, p2, p3, p4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 473
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .end local v3           #stream:Ljava/io/FileInputStream;
    :goto_0
    move v2, v1

    .line 479
    .end local v1           #size:I
    .local v2, size:I
    :goto_1
    return v2

    .line 469
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const-string v4, "fail to get content"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    .line 470
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_1

    .line 474
    .end local v2           #size:I
    .restart local v1       #size:I
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "fail to find file"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 477
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentSize(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFinalRecipient()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 538
    const/4 v1, 0x0

    .line 544
    :goto_0
    return-object v1

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    .line 542
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 544
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mHandle:J

    return-wide v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mMsgType:I

    return v0
.end method

.method public getOrignator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mOrignator:Ljava/lang/String;

    return-object v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mReadStatus:I

    return v0
.end method

.method public getRecipient()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isRetry()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRetry:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mTransparent:Z

    return v0
.end method

.method public releaseResource()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 558
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 199
    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mReadStatus:I

    .line 200
    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mMsgType:I

    .line 201
    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    .line 203
    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mOrignatorSize:I

    .line 204
    iput-object v2, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mOrignator:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipientSize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mPartId:I

    .line 211
    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mEncoding:I

    .line 212
    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mCharset:I

    .line 213
    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mLanguage:I

    .line 215
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J

    .line 218
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    .line 220
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->clearMessagebuffer()V

    .line 221
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->resetPool()V

    .line 223
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mHandle:J

    .line 224
    return-void
.end method

.method public retrieveNextPartion()V
    .locals 2

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->clearMessagebuffer()V

    .line 440
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->removeOneFragment()Z

    move-result v0

    .line 442
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 443
    iget v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mPartId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mPartId:I

    .line 445
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mDataPool:Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject$DataPool;->isPoolEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFracDeliver:I

    goto :goto_0
.end method

.method public setCharset(I)Z
    .locals 1
    .parameter "charset"

    .prologue
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 377
    const-string v0, "error, invalid charset"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mCharset:I

    .line 381
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 374
    :pswitch_0
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mCharset:I

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setContent([B)Z
    .locals 3
    .parameter "content"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->setContentToFile(Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public setContentSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 286
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J

    .line 287
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public setContentSize(Ljava/io/File;)Z
    .locals 6
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 v3, 0x0

    .line 304
    :goto_0
    return v3

    .line 295
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 296
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 297
    .local v1, size:I
    int-to-long v4, v1

    iput-wide v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J

    .line 298
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v1           #size:I
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentToFile(Ljava/lang/String;[BII)Z
    .locals 6
    .parameter "fileName"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 319
    .local v1, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2, p3, p4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 320
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 321
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mContentSize:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    int-to-long v4, p4

    iput-wide v4, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mWholeSize:J

    .end local v1           #stream:Ljava/io/FileOutputStream;
    :goto_0
    move v2, v3

    .line 331
    :goto_1
    return v2

    .line 316
    :cond_0
    const-string v4, "fail to get content"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEncoding(I)Z
    .locals 1
    .parameter "encoding"

    .prologue
    .line 366
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mEncoding:I

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public setFolderPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "folder"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mFolderPath:Ljava/lang/String;

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public setHandle(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 572
    iput-wide p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mHandle:J

    .line 573
    return-void
.end method

.method public setLang(I)Z
    .locals 1
    .parameter "lang"

    .prologue
    .line 414
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mLanguage:I

    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public setMessageType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 271
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mMsgType:I

    .line 272
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mMsgType:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error, invalid message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :pswitch_1
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mMsgType:I

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrignator(Ljava/lang/String;)Z
    .locals 1
    .parameter "orignator"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mOrignator:Ljava/lang/String;

    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mOrignatorSize:I

    .line 250
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mOrignatorSize:I

    goto :goto_0
.end method

.method public setPartId(I)Z
    .locals 1
    .parameter "partId"

    .prologue
    .line 264
    if-ltz p1, :cond_0

    .line 265
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mPartId:I

    .line 266
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReadStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 385
    packed-switch p1, :pswitch_data_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error, invalid read status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->log(Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mReadStatus:I

    .line 394
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->mReadStatus:I

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
