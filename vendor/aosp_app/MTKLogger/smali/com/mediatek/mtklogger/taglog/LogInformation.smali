.class public Lcom/mediatek/mtklogger/taglog/LogInformation;
.super Ljava/lang/Object;
.source "LogInformation.java"


# static fields
.field private static final LOG_COMPRESS_RATIO_CHANGE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_COMPRESS_RATIO_MAX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_COMPRESS_RATIO_MIN:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogFile:Ljava/io/File;

.field private mLogFilesCount:I

.field private mLogSize:J

.field private mLogType:I

.field private mSaveSpace:J

.field private mTagLogSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide v8, 0x3fd3333333333333L

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-wide v3, 0x3fe999999999999aL

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_CHANGE:Landroid/util/SparseArray;

    .line 14
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_CHANGE:Landroid/util/SparseArray;

    const-wide/32 v1, 0xa00000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_CHANGE:Landroid/util/SparseArray;

    const-wide/32 v1, 0xa00000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_CHANGE:Landroid/util/SparseArray;

    const-wide/32 v1, 0x3200000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MAX:Landroid/util/SparseArray;

    .line 20
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MAX:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MAX:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MAX:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MIN:Landroid/util/SparseArray;

    .line 26
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MIN:Landroid/util/SparseArray;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MIN:Landroid/util/SparseArray;

    const-wide v1, 0x3fc999999999999aL

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MIN:Landroid/util/SparseArray;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 4
    .parameter "logType"
    .parameter "logFile"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogType:I

    .line 46
    iput-object p2, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogFile:Ljava/io/File;

    .line 47
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getFolderFilesCount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogFilesCount:I

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getFolderOrFileSize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogSize:J

    .line 49
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/LogInformation;->calculateTagLogSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mTagLogSize:J

    .line 50
    iget-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogSize:J

    iget-wide v2, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mTagLogSize:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mSaveSpace:J

    .line 51
    return-void
.end method

.method private calculateTagLogSize()J
    .locals 8

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .local v0, tagLogSize:J
    iget-wide v3, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogSize:J

    sget-object v2, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_CHANGE:Landroid/util/SparseArray;

    iget v5, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogType:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gtz v2, :cond_0

    .line 56
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v2, "0"

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogSize:J

    long-to-double v4, v4

    sget-object v2, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MAX:Landroid/util/SparseArray;

    iget v6, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogType:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    :goto_0
    return-wide v0

    .line 58
    :cond_0
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v2, "0"

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogSize:J

    long-to-double v4, v4

    sget-object v2, Lcom/mediatek/mtklogger/taglog/LogInformation;->LOG_COMPRESS_RATIO_MIN:Landroid/util/SparseArray;

    iget v6, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogType:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getLogFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method public getLogFilesCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogFilesCount:I

    return v0
.end method

.method public getLogSize()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogSize:J

    return-wide v0
.end method

.method public getLogType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mLogType:I

    return v0
.end method

.method public getSaveSpace()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mSaveSpace:J

    return-wide v0
.end method

.method public getTagLogSize()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/mediatek/mtklogger/taglog/LogInformation;->mTagLogSize:J

    return-wide v0
.end method
