.class public Lcom/android/wifidirect/test/WifiOppShareInfo;
.super Ljava/lang/Object;
.source "WifiOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:J

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V
    .locals 2
    .parameter "id"
    .parameter "uri"
    .parameter "hint"
    .parameter "filename"
    .parameter "mimetype"
    .parameter "direction"
    .parameter "destination"
    .parameter "visibility"
    .parameter "confirm"
    .parameter "status"
    .parameter "totalBytes"
    .parameter "currentBytes"
    .parameter "timestamp"
    .parameter "mediaScanned"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    .line 65
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 69
    iput p6, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    .line 71
    iput-object p7, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    .line 72
    iput p8, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    .line 73
    iput p9, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    .line 74
    iput p10, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 75
    iput-wide p11, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTotalBytes:J

    .line 76
    iput-wide p13, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mCurrentBytes:J

    .line 77
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    .line 78
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMediaScanned:Z

    .line 79
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isObsolete()Z
    .locals 2

    .prologue
    .line 118
    const/16 v0, 0xc0

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToStart()Z
    .locals 3

    .prologue
    const/16 v2, 0xbe

    const/4 v0, 0x1

    .line 91
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-nez v1, :cond_1

    .line 92
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-ne v1, v0, :cond_2

    .line 96
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    if-eq v1, v2, :cond_0

    .line 101
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
