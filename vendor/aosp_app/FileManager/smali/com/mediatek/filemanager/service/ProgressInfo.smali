.class public Lcom/mediatek/filemanager/service/ProgressInfo;
.super Ljava/lang/Object;
.source "ProgressInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressInfo"


# instance fields
.field private final mCurrentNumber:I

.field private mErrorCode:I

.field private mFileInfo:Lcom/mediatek/filemanager/FileInfo;

.field private final mIsFailInfo:Z

.field private final mProgress:I

.field private final mTotal:J

.field private final mTotalNumber:J

.field private mUpdateInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZ)V
    .locals 6
    .parameter "errorCode"
    .parameter "isFailInfo"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mErrorCode:I

    .line 51
    iput-object v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 98
    const-string v0, "ProgressInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressInfo,errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput p1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mErrorCode:I

    .line 100
    iput v3, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mProgress:I

    .line 101
    iput-wide v4, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotal:J

    .line 102
    iput-boolean p2, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mIsFailInfo:Z

    .line 103
    iput v3, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mCurrentNumber:I

    .line 104
    iput-wide v4, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotalNumber:J

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/filemanager/FileInfo;IJIJ)V
    .locals 2
    .parameter "fileInfo"
    .parameter "progeress"
    .parameter "total"
    .parameter "currentNumber"
    .parameter "totalNumber"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    .line 48
    iput v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mErrorCode:I

    .line 51
    iput-object v1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 83
    iput-object p1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 84
    iput p2, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mProgress:I

    .line 85
    iput-wide p3, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotal:J

    .line 86
    iput-boolean v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mIsFailInfo:Z

    .line 87
    iput p5, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mCurrentNumber:I

    .line 88
    iput-wide p6, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotalNumber:J

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJIJ)V
    .locals 2
    .parameter "update"
    .parameter "progeress"
    .parameter "total"
    .parameter "currentNumber"
    .parameter "totalNumber"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    .line 48
    iput v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mErrorCode:I

    .line 51
    iput-object v1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 65
    iput-object p1, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mProgress:I

    .line 67
    iput-wide p3, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotal:J

    .line 68
    iput-boolean v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mIsFailInfo:Z

    .line 69
    iput p5, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mCurrentNumber:I

    .line 70
    iput-wide p6, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotalNumber:J

    .line 71
    return-void
.end method


# virtual methods
.method public getCurrentNumber()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mCurrentNumber:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mErrorCode:I

    return v0
.end method

.method public getFileInfo()Lcom/mediatek/filemanager/FileInfo;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mFileInfo:Lcom/mediatek/filemanager/FileInfo;

    return-object v0
.end method

.method public getProgeress()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mProgress:I

    return v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotal:J

    return-wide v0
.end method

.method public getTotalNumber()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mTotalNumber:J

    return-wide v0
.end method

.method public getUpdateInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isFailInfo()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/mediatek/filemanager/service/ProgressInfo;->mIsFailInfo:Z

    return v0
.end method
