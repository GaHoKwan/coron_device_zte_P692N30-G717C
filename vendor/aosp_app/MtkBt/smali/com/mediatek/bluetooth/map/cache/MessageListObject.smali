.class public Lcom/mediatek/bluetooth/map/cache/MessageListObject;
.super Ljava/lang/Object;
.source "MessageListObject.java"


# instance fields
.field private isOccupied:Z

.field private mCurrentTime:Ljava/lang/String;

.field private mMessageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/cache/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNewMessage:Z

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->reset()V

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized addMessageItem(Lcom/mediatek/bluetooth/map/cache/MessageItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 86
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mMessageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addSize(I)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateMessageItemArray()[Lcom/mediatek/bluetooth/map/cache/MessageItem;
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mMessageItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mMessageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/bluetooth/map/cache/MessageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/bluetooth/map/cache/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mSize:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->isOccupied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewMessage()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mNewMessage:Z

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mMessageItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mMessageItems:Ljava/util/ArrayList;

    .line 60
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/UtcUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mCurrentTime:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mSize:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->isOccupied:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mNewMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mMessageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNewMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mNewMessage:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->mNewMessage:Z

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->isOccupied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return v1

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
