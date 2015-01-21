.class public Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;
.super Ljava/lang/Object;
.source "MDLoggerClearLog.java"


# static fields
.field private static final LOG_FOLDER_BEGIN:Ljava/lang/String; = "MDLog"

.field private static final TAG:Ljava/lang/String; = "MTKLogger/MDLoggerClearLog"

.field private static mInstance:Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;


# instance fields
.field private eeFolderArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private folderTreeListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mASTL1Array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearLogInEE:Z

.field private mDAKArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDMDSPMLTArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mL1Array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogNeedToBeClearSize:J

.field private mMD2GMLTArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMdlogPath:Ljava/lang/String;

.field private mNormalContainBin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPSArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLogSizeLimit:I

.field private normalFolderArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherFolderArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherFolderSize:J

.field private sd_mdlog_root:Ljava/lang/String;

.field private strStartWithString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mInstance:Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->strStartWithString:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->sd_mdlog_root:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    .line 79
    return-void
.end method

.method private calculateFolderSize(Ljava/io/File;)J
    .locals 9
    .parameter "root"

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 119
    .local v5, size:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 122
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 123
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 124
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-wide v5
.end method

.method private checkAndRemoveRunningFolder()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x3

    .line 547
    const/4 v0, 0x1

    .line 548
    .local v0, nCount:I
    const/4 v1, 0x4

    .line 549
    .local v1, nTotalFile:I
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 550
    add-int/lit8 v0, v0, 0x1

    .line 551
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 554
    :cond_0
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 555
    add-int/lit8 v0, v0, 0x1

    .line 556
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 559
    :cond_1
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 560
    add-int/lit8 v0, v0, 0x1

    .line 561
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 564
    :cond_2
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 565
    add-int/lit8 v0, v0, 0x1

    .line 566
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 569
    :cond_3
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_4

    .line 570
    add-int/lit8 v0, v0, 0x1

    .line 571
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 574
    :cond_4
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_5

    .line 575
    add-int/lit8 v0, v0, 0x1

    .line 576
    iget-object v3, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 578
    :cond_5
    const-string v3, "MTKLogger/MDLoggerClearLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nTotalFile =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nCount =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    div-int/2addr v1, v0

    .line 580
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->removeLogByProtectFileNum(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 589
    :cond_6
    :goto_0
    return v2

    .line 584
    :cond_7
    const/4 v3, 0x4

    if-le v1, v3, :cond_8

    .line 585
    invoke-direct {p0, v6}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->removeLogByProtectFileNum(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 589
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkDeleteSizeIfEnough()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 480
    iget-wide v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 481
    iget-wide v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 482
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clean Running folder in mdlog is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v0, "MTKLogger/MDLoggerClearLog"

    const-string v1, "Array size after RemoveRunning Folder "

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mASTL1Array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDAKArray size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDMDSPMLTArray size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMD2GMLTArray size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPSArray size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v0, "MTKLogger/MDLoggerClearLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mL1Array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfCanDeleteNormalFolder(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    .line 804
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 806
    .local v0, nTotal:I
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const-string v1, "MTKLogger/MDLoggerClearLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find running path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_0
    const/4 v1, 0x0

    .line 818
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 814
    goto :goto_0

    :cond_2
    move v1, v2

    .line 818
    goto :goto_0
.end method

.method private checkIfClearSDLog(Ljava/lang/String;)Z
    .locals 9
    .parameter "logFolderName"

    .prologue
    const/4 v4, 0x0

    .line 155
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 163
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->sd_mdlog_root:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mtklog"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMdlogPath:Ljava/lang/String;

    .line 165
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMdlogPath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, mdlogFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    const-string v5, "MTKLogger/MDLoggerClearLog"

    const-string v6, "The mdlog folder doesn\'t exist"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v1           #mdlogFolder:Ljava/io/File;
    :goto_0
    return v4

    .line 171
    .restart local v1       #mdlogFolder:Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    const-string v5, "MTKLogger/MDLoggerClearLog"

    const-string v6, "The mdlog folder can not execute."

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v1           #mdlogFolder:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MTKLogger/MDLoggerClearLog"

    const-string v6, "Exception: Failed to get the SD card status"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const-string v5, "MTKLogger/MDLoggerClearLog"

    const-string v6, "The SD Card is not available"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #mdlogFolder:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->strStartWithString:Ljava/lang/String;

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->strStartWithString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MDLog"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->strStartWithString:Ljava/lang/String;

    .line 177
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->calculateFolderSize(Ljava/io/File;)J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const-wide/16 v7, 0x400

    div-long v2, v5, v7

    .line 179
    .local v2, ocupySize:J
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Limit size is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mTotalLogSizeLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "M. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMdlogPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mdlog foler block size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mTotalLogSizeLimit:I

    int-to-long v5, v5

    sub-long v5, v2, v5

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    .line 182
    iget v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mTotalLogSizeLimit:I

    add-int/lit8 v5, v5, -0xa

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 183
    const-string v5, "MTKLogger/MDLoggerClearLog"

    const-string v6, "The Mdlogger need not to clear log."

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Mdlogger need clear log "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  M."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private checkOtherFolderInMDFolder(Ljava/io/File;)J
    .locals 10
    .parameter "dir"

    .prologue
    .line 785
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 786
    .local v5, mSize:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 787
    const-wide/16 v7, 0x0

    .line 799
    :goto_0
    return-wide v7

    .line 790
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 791
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 792
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 793
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 794
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 795
    const-string v7, "MTKLogger/MDLoggerClearLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clear file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #file:Ljava/io/File;
    :cond_2
    move-wide v7, v5

    .line 799
    goto :goto_0
.end method

.method private checkRemoveFileOneByOne()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x3

    .line 500
    const/4 v0, 0x1

    .line 501
    .local v0, nCount:I
    const/4 v1, 0x4

    .line 502
    .local v1, nTotalFile:I
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 503
    add-int/lit8 v0, v0, 0x1

    .line 504
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 507
    :cond_0
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 508
    add-int/lit8 v0, v0, 0x1

    .line 509
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 512
    :cond_1
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 513
    add-int/lit8 v0, v0, 0x1

    .line 514
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 517
    :cond_2
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 522
    :cond_3
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 523
    add-int/lit8 v0, v0, 0x1

    .line 524
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 527
    :cond_4
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 528
    add-int/lit8 v0, v0, 0x1

    .line 529
    iget-object v4, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 531
    :cond_5
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nTotalFile =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nCount =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    div-int/2addr v1, v0

    .line 533
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->removeLogByProtectFileNum(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 542
    :goto_0
    return v3

    :cond_6
    move v2, v1

    .line 536
    .end local v1           #nTotalFile:I
    .local v2, nTotalFile:I
    add-int/lit8 v1, v2, -0x1

    .end local v2           #nTotalFile:I
    .restart local v1       #nTotalFile:I
    if-lez v2, :cond_7

    .line 537
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->removeLogByProtectFileNum(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    .line 542
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private clearLogs(Ljava/io/File;)J
    .locals 12
    .parameter "dir"

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 199
    .local v5, mSize:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 201
    const-string v9, "MTKLogger/MDLoggerClearLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Clear file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v7, v5

    .line 219
    .end local v5           #mSize:J
    .local v7, mSize:J
    :goto_0
    return-wide v7

    .line 205
    .end local v7           #mSize:J
    .restart local v5       #mSize:J
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 206
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 208
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 215
    :cond_1
    :goto_2
    const-string v9, "MTKLogger/MDLoggerClearLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Clear file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 212
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 217
    .end local v1           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 218
    const-string v9, "MTKLogger/MDLoggerClearLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Clear file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v7, v5

    .line 219
    .end local v5           #mSize:J
    .restart local v7       #mSize:J
    goto :goto_0
.end method

.method private clearNormalLogWithConfirm(Ljava/io/File;)J
    .locals 15
    .parameter "dir"

    .prologue
    .line 223
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 224
    .local v6, mSize:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    .line 225
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 226
    const-string v12, "MTKLogger/MDLoggerClearLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "confirm clear !isDirectory file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v6

    .line 270
    .end local v6           #mSize:J
    .local v8, mSize:J
    :goto_0
    return-wide v8

    .line 229
    .end local v8           #mSize:J
    .restart local v6       #mSize:J
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 230
    .local v2, files:[Ljava/io/File;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v11, strBPLGUInioArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 232
    .local v5, mFindBin:Z
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 233
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".bin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 238
    const/4 v5, 0x1

    .line 239
    const-string v12, "MTKLogger/MDLoggerClearLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Find bin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 241
    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "BPLGUInfo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v6, v12

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 248
    const-string v12, "MTKLogger/MDLoggerClearLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "confirm clear file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 252
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v12

    add-long/2addr v6, v12

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 254
    const-string v12, "MTKLogger/MDLoggerClearLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "confirm clear file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 258
    .end local v1           #file:Ljava/io/File;
    :cond_5
    if-nez v5, :cond_7

    .line 260
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 261
    .local v10, strBPLGUInio:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v6, v12

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 266
    .end local v1           #file:Ljava/io/File;
    .end local v10           #strBPLGUInio:Ljava/lang/String;
    :cond_6
    const-string v12, "MTKLogger/MDLoggerClearLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "confirm clear file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    move-wide v8, v6

    .line 270
    .end local v6           #mSize:J
    .restart local v8       #mSize:J
    goto/16 :goto_0
.end method

.method private clearNormalLogs(Ljava/io/File;)J
    .locals 13
    .parameter "dir"

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 275
    .local v7, mSize:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 277
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clear Normal file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v7

    .line 333
    :goto_0
    return-wide v10

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 282
    .local v2, files:[Ljava/io/File;
    const/4 v5, 0x0

    .line 283
    .local v5, mFindException:Z
    const/4 v6, 0x0

    .line 284
    .local v6, mRunning:Z
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 285
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".bin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 290
    const/4 v5, 0x1

    .line 291
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 292
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_2
    if-nez v6, :cond_2

    if-eqz v5, :cond_6

    .line 315
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long v10, v7, v10

    goto :goto_0

    .line 295
    .restart local v1       #file:Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".dmp.dmp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 296
    const/4 v6, 0x1

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 300
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Arraysize= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Find running path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 307
    .end local v9           #path:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 308
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v7, v10

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 310
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clear Normal file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 317
    .end local v1           #file:Ljava/io/File;
    :cond_6
    if-nez v5, :cond_a

    .line 318
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_9

    aget-object v1, v0, v3

    .line 319
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 320
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v7, v10

    .line 321
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 322
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clear Normal file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 323
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 324
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v7, v10

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 326
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clear Normal file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 329
    .end local v1           #file:Ljava/io/File;
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 330
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clear Normal file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-wide v10, v7

    .line 333
    goto/16 :goto_0
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 12
    .parameter "root"

    .prologue
    const/4 v11, 0x0

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 92
    .local v7, size:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->saveDirToArray(Ljava/io/File;)V

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, folderArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 97
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 98
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 99
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 100
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 101
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 102
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->saveDirToArray(Ljava/io/File;)V

    .line 103
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #folder:Ljava/io/File;
    .end local v4           #folderArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    return-wide v7
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mInstance:Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;

    invoke-direct {v0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mInstance:Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;

    .line 85
    :cond_0
    sget-object v0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mInstance:Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readRootFolderTreeList(Ljava/lang/String;Z)Z
    .locals 13
    .parameter "path"
    .parameter "mTopFoler"

    .prologue
    .line 823
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "file_tree.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 824
    .local v9, treeFileString:Ljava/lang/String;
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tree file path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v3, ""

    .line 827
    .local v3, mEEfolerName:Ljava/lang/String;
    const-string v4, ""

    .line 828
    .local v4, mFolderNameToReplace:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    if-eqz v10, :cond_0

    .line 829
    const-string v10, "MDLog_"

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 830
    .local v5, nBegin:I
    const-string v10, "_EE_"

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 831
    .local v6, nEnd:I
    if-ltz v6, :cond_3

    if-lez v5, :cond_3

    .line 832
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 837
    :goto_0
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EE folder name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Folder Name to replace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .end local v5           #nBegin:I
    .end local v6           #nEnd:I
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 840
    .local v2, logFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 841
    .local v7, reader:Ljava/io/BufferedReader;
    if-eqz p2, :cond_4

    .line 842
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 852
    :goto_1
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 853
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 854
    .local v1, line:Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 855
    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 856
    const-string v10, ".dmp.dmp"

    const-string v11, ".dmp"

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    const-string v10, ".bin.bin"

    const-string v11, ".bin"

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 858
    iget-boolean v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    if-eqz v10, :cond_2

    .line 859
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 862
    if-eqz p2, :cond_5

    .line 863
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 864
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 889
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 890
    .end local v1           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 891
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    .line 892
    const/4 v10, 0x0

    .line 905
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    return v10

    .line 835
    .end local v2           #logFile:Ljava/io/File;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v5       #nBegin:I
    .restart local v6       #nEnd:I
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    goto/16 :goto_0

    .line 844
    .end local v5           #nBegin:I
    .end local v6           #nEnd:I
    .restart local v2       #logFile:Ljava/io/File;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_4
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 845
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 846
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 847
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 848
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 849
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 868
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_5
    :try_start_2
    const-string v10, ".dmp"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 869
    const-string v10, "MDLog_PS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 870
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 871
    :cond_6
    const-string v10, "MDLog_DAK"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 872
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 873
    :cond_7
    const-string v10, "MDLog_L1"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 874
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 875
    :cond_8
    const-string v10, "MDLog_ASTL1"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 876
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 877
    :cond_9
    const-string v10, "MDLog_MD2GMLT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 878
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 879
    :cond_a
    const-string v10, "MDLog_DMDSPMLT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 880
    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 887
    :cond_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 894
    if-eqz p2, :cond_c

    .line 895
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Top Tree File: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :goto_5
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    .line 905
    const/4 v10, 0x1

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 897
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_c
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mASTL1Array size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPSArray size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mL1Array size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDAKArray size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDMDSPMLTArray size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v10, "MTKLogger/MDLoggerClearLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMD2GMLTArray size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 889
    .end local v1           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method private removeLogByProtectFileNum(I)Z
    .locals 9
    .parameter "nFileRemained"

    .prologue
    const/4 v4, 0x1

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, removeFind:Z
    if-gez p1, :cond_0

    .line 339
    const/4 p1, 0x0

    .line 341
    :cond_0
    const/4 v2, 0x1

    .line 342
    .local v2, nSecondOld:I
    if-nez p1, :cond_1

    .line 343
    const/4 v2, 0x0

    .line 348
    :cond_1
    const/4 v3, 0x0

    .line 350
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_5

    .line 352
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    .local v1, filePathString:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, file:Ljava/io/File;
    const/4 v3, 0x1

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    iget-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 359
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clear Running file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkDeleteSizeIfEnough()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 476
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_2
    :goto_0
    return v4

    .line 364
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #filePathString:Ljava/lang/String;
    :cond_3
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_4
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_7

    .line 373
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .restart local v1       #filePathString:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v0       #file:Ljava/io/File;
    const/4 v3, 0x1

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 378
    iget-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 380
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clear Running file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkDeleteSizeIfEnough()Z

    move-result v5

    if-nez v5, :cond_2

    .line 386
    :cond_6
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_8

    .line 392
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 393
    .restart local v1       #filePathString:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 395
    iget-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 397
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clear Running file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkDeleteSizeIfEnough()Z

    move-result v5

    if-nez v5, :cond_2

    .line 404
    :goto_1
    const/4 v3, 0x1

    .line 405
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_a

    .line 410
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 411
    .restart local v1       #filePathString:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v0       #file:Ljava/io/File;
    const/4 v3, 0x1

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 415
    iget-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 417
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clear Running file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkDeleteSizeIfEnough()Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    :cond_9
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 428
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_c

    .line 429
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    .restart local v1       #filePathString:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v0       #file:Ljava/io/File;
    const/4 v3, 0x1

    .line 432
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 434
    iget-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 436
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clear Running file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkDeleteSizeIfEnough()Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    :cond_b
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_e

    .line 447
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 448
    .restart local v1       #filePathString:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v0       #file:Ljava/io/File;
    const/4 v3, 0x1

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 452
    iget-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 454
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clear Running file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkDeleteSizeIfEnough()Z

    move-result v5

    if-nez v5, :cond_2

    .line 460
    :cond_d
    iget-object v5, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePathString:Ljava/lang/String;
    :cond_e
    if-nez v3, :cond_1

    .line 464
    const-string v4, "MTKLogger/MDLoggerClearLog"

    const-string v5, "No more log find in running folder"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v4, "MTKLogger/MDLoggerClearLog"

    const-string v5, "Array size after RemoveRunning Folder "

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mASTL1Array size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mASTL1Array:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDAKArray size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDAKArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDMDSPMLTArray size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mDMDSPMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMD2GMLTArray size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMD2GMLTArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPSArray size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mPSArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v4, "MTKLogger/MDLoggerClearLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mL1Array size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mL1Array:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 402
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #filePathString:Ljava/lang/String;
    :cond_f
    const-string v5, "MTKLogger/MDLoggerClearLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private saveDirToArray(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, pathString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->strStartWithString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v1, "EE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkAndClearLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "logSizeMode"
    .parameter "sd_path"
    .parameter "logFolderName"

    .prologue
    .line 596
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    .line 597
    iput p1, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mTotalLogSizeLimit:I

    .line 598
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->sd_mdlog_root:Ljava/lang/String;

    .line 599
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkIfClearSDLog(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "other folder ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "normal Folder ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ee Folder ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    new-instance v9, Lcom/mediatek/mtklogger/utils/UtilsSortString;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/mediatek/mtklogger/utils/UtilsSortString;-><init>(I)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 607
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 608
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 609
    .local v3, length:I
    const/4 v5, 0x0

    .line 611
    .local v5, nCount:I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 612
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 613
    .local v6, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    .local v1, file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 615
    const/4 v1, 0x0

    .line 616
    add-int/lit8 v5, v5, 0x1

    .line 617
    goto :goto_1

    .line 619
    .end local v1           #file:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    :cond_2
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "other folde remove file total size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "K"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 621
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 622
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean other folder in mdlog is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 626
    :cond_3
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mMdlogPath:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->readRootFolderTreeList(Ljava/lang/String;Z)Z

    .line 628
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    new-instance v9, Lcom/mediatek/mtklogger/utils/UtilsSortString;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/mediatek/mtklogger/utils/UtilsSortString;-><init>(I)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 630
    .restart local v6       #path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkOtherFolderInMDFolder(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 632
    const/4 v1, 0x0

    .line 633
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 634
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    .line 635
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean other folder in EE mdlog is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 641
    .end local v1           #file:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    new-instance v9, Lcom/mediatek/mtklogger/utils/UtilsSortString;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/mediatek/mtklogger/utils/UtilsSortString;-><init>(I)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 642
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 643
    .restart local v6       #path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkOtherFolderInMDFolder(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 645
    const/4 v1, 0x0

    .line 646
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 647
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    .line 648
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean other folder in normal mdlog is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    .end local v1           #file:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 655
    .local v4, mTotalNoral:I
    if-lez v4, :cond_b

    .line 657
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->normalFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 658
    .restart local v6       #path:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->folderTreeListArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 659
    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->readRootFolderTreeList(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 660
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkRemoveFileOneByOne()Z

    move-result v8

    if-nez v8, :cond_0

    .line 664
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 666
    const/4 v1, 0x0

    .line 667
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 668
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_8

    .line 669
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean bin in normal mdlog is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    .end local v1           #file:Ljava/io/File;
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearNormalLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 676
    const/4 v1, 0x0

    .line 677
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 678
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_8

    .line 679
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean normal log is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    .end local v1           #file:Ljava/io/File;
    :cond_a
    invoke-direct {p0, v6}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkIfCanDeleteNormalFolder(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 687
    const-string v8, "MTKLogger/MDLoggerClearLog"

    const-string v9, "Clean Noram log file one by one"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->readRootFolderTreeList(Ljava/lang/String;Z)Z

    .line 689
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkRemoveFileOneByOne()Z

    move-result v8

    if-nez v8, :cond_0

    .line 693
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 695
    const/4 v1, 0x0

    .line 696
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 697
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_8

    .line 698
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean bin in normal mdlog is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    .end local v1           #file:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 722
    const-string v8, "MTKLogger/MDLoggerClearLog"

    const-string v9, "Clean running log"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mRunningArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 724
    .local v7, pathString:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->readRootFolderTreeList(Ljava/lang/String;Z)Z

    .line 725
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkAndRemoveRunningFolder()Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_0

    .line 731
    .end local v7           #pathString:Ljava/lang/String;
    :cond_d
    const-string v8, "MTKLogger/MDLoggerClearLog"

    const-string v9, "Clean Noram bin file one bye one"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 734
    .restart local v7       #pathString:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->readRootFolderTreeList(Ljava/lang/String;Z)Z

    .line 735
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkRemoveFileOneByOne()Z

    move-result v8

    if-eqz v8, :cond_e

    goto/16 :goto_0

    .line 741
    .end local v7           #pathString:Ljava/lang/String;
    :cond_f
    const-string v8, "MTKLogger/MDLoggerClearLog"

    const-string v9, "Clean Noram bin folder"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mNormalContainBin:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 744
    .restart local v6       #path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 746
    const/4 v1, 0x0

    .line 747
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_10

    .line 748
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_10

    .line 749
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean bin in normal mdlog is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    .end local v1           #file:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    :cond_11
    const-string v8, "MTKLogger/MDLoggerClearLog"

    const-string v9, "Clean EE dump file one bye one"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 759
    .restart local v7       #pathString:Ljava/lang/String;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    .line 760
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->readRootFolderTreeList(Ljava/lang/String;Z)Z

    .line 761
    invoke-direct {p0}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->checkRemoveFileOneByOne()Z

    move-result v8

    if-eqz v8, :cond_12

    goto/16 :goto_0

    .line 765
    .end local v7           #pathString:Ljava/lang/String;
    :cond_13
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mClearLogInEE:Z

    .line 767
    const-string v8, "MTKLogger/MDLoggerClearLog"

    const-string v9, "Clean EE Folder"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->eeFolderArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 770
    .restart local v6       #path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .restart local v1       #file:Ljava/io/File;
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->clearLogs(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    .line 772
    const/4 v1, 0x0

    .line 773
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_14

    .line 774
    iget-wide v8, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->mLogNeedToBeClearSize:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_14

    .line 775
    const-string v8, "MTKLogger/MDLoggerClearLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean bin in EE mdlog is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/mtklogger/utils/MDLoggerClearLog;->otherFolderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
