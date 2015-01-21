.class Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
.super Ljava/lang/Object;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateInfo"
.end annotation


# static fields
.field protected static final NEED_UPDATE_TIME:I = 0xc8


# instance fields
.field private mCurrentNumber:J

.field private mProgressSize:J

.field private mStartOperationTime:J

.field private mTotalNumber:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    .line 399
    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mProgressSize:J

    .line 400
    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalSize:J

    .line 401
    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mCurrentNumber:J

    .line 402
    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalNumber:J

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    .line 406
    return-void
.end method


# virtual methods
.method public getCurrentNumber()J
    .locals 2

    .prologue
    .line 417
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mCurrentNumber:J

    return-wide v0
.end method

.method public getProgress()J
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mProgressSize:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalSize:J

    return-wide v0
.end method

.method public getTotalNumber()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalNumber:J

    return-wide v0
.end method

.method public needUpdate()Z
    .locals 6

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    sub-long v0, v2, v4

    .line 442
    .local v0, operationTime:J
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    .line 444
    const/4 v2, 0x1

    .line 446
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateCurrentNumber(J)V
    .locals 2
    .parameter "addNumber"

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mCurrentNumber:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mCurrentNumber:J

    .line 434
    return-void
.end method

.method public updateProgress(J)V
    .locals 2
    .parameter "addSize"

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mProgressSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mProgressSize:J

    .line 426
    return-void
.end method

.method public updateTotal(J)V
    .locals 2
    .parameter "addSize"

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalSize:J

    .line 430
    return-void
.end method

.method public updateTotalNumber(J)V
    .locals 2
    .parameter "addNumber"

    .prologue
    .line 437
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalNumber:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->mTotalNumber:J

    .line 438
    return-void
.end method
