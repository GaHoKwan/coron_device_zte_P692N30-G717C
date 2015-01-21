.class Lcom/android/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/TileImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 7
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 676
    if-eqz p2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v3

    .line 677
    :cond_1
    const/4 v1, 0x1

    .line 678
    .local v1, quota:I
    const/4 v2, 0x0

    .line 679
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 680
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    monitor-enter v5

    .line 681
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v6}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 682
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    if-nez v2, :cond_5

    .line 697
    :cond_3
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 698
    :cond_4
    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 684
    :cond_5
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 685
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    .line 688
    .local v0, hasBeenLoaded:Z
    iget v5, v2, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 692
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 693
    if-nez v0, :cond_6

    invoke-virtual {v2, p1, v4, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 694
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 695
    goto :goto_1
.end method
