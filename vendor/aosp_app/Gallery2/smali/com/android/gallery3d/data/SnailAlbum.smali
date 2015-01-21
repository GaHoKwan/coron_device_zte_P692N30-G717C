.class public Lcom/android/gallery3d/data/SnailAlbum;
.super Lcom/android/gallery3d/data/SingleItemAlbum;
.source "SnailAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/SnailAlbum"


# instance fields
.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mItem:Lcom/android/gallery3d/data/SnailItem;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/SnailItem;)V
    .locals 2
    .parameter "path"
    .parameter "item"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/data/SingleItemAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;)V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    return-void
.end method


# virtual methods
.method public notifyChange()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 45
    return-void
.end method

.method public reload()J
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/data/SingleItemAlbum;->getItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailItem;->updateVersion()V

    .line 37
    invoke-static {}, Lcom/android/gallery3d/data/SnailAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 39
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
