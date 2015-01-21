.class public Lcom/mediatek/bluetooth/map/cache/MessageListRequest;
.super Ljava/lang/Object;
.source "MessageListRequest.java"


# instance fields
.field private isOccupied:Z

.field private mAddr:Ljava/lang/String;

.field private mChildFolder:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mListOffset:I

.field private mListSize:I

.field private mMasId:I

.field private mMask:I

.field private mMaxSubjectLen:I

.field private mOrignator:Ljava/lang/String;

.field private mPriority:I

.field private mReadStatus:I

.field private mRecipient:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->isOccupied:Z

    .line 67
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mMasId:I

    .line 68
    return-void
.end method


# virtual methods
.method public declineListOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListOffset:I

    .line 92
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListOffset:I

    if-gez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListOffset:I

    .line 95
    :cond_0
    return-void
.end method

.method public geMask()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mMask:I

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mEndTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/bluetooth/map/util/UtcUtil;->revertUtcToMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mFolder:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 152
    :goto_0
    return-object v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mFolder:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mFolder:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getListOffset()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListOffset:I

    return v0
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListSize:I

    return v0
.end method

.method public getMaxSubjectLen()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListSize:I

    if-nez v0, :cond_0

    .line 160
    const/16 v0, 0xfe

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mMaxSubjectLen:I

    .line 162
    :cond_0
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mMaxSubjectLen:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mType:I

    xor-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getOrignator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mOrignator:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mPriority:I

    return v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mReadStatus:I

    return v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mStartTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/bluetooth/map/util/UtcUtil;->revertUtcToMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isOccupied()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->isOccupied:Z

    return v0
.end method

.method public setDefaultMask()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mMask:I

    .line 75
    return-void
.end method

.method public setMask(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 70
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mMask:I

    .line 71
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mType:I

    .line 79
    return-void
.end method

.method public declared-synchronized setOccupied(Z)Z
    .locals 1
    .parameter "occupied"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->isOccupied:Z

    if-nez v0, :cond_0

    .line 108
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->isOccupied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 109
    :cond_0
    if-nez p1, :cond_1

    .line 110
    :try_start_1
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->isOccupied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->mListSize:I

    .line 82
    return-void
.end method
