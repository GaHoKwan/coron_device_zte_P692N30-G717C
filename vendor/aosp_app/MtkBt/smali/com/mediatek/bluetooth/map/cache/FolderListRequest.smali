.class public Lcom/mediatek/bluetooth/map/cache/FolderListRequest;
.super Ljava/lang/Object;
.source "FolderListRequest.java"


# instance fields
.field private isOccupied:Z

.field private mAddr:Ljava/lang/String;

.field private mMasId:I

.field private mOffset:I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->isOccupied:Z

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "masId"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->isOccupied:Z

    .line 49
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->mMasId:I

    .line 50
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->mOffset:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->mSize:I

    return v0
.end method

.method public isOccupied(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "occupied"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->isOccupied:Z

    return v0
.end method

.method public declared-synchronized setOccupied(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "occupied"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->isOccupied:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->isOccupied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->isOccupied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
