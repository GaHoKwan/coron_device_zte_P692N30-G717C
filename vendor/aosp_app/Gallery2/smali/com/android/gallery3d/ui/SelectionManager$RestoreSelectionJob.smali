.class Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreSelectionJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SelectionManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SelectionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;-><init>(Lcom/android/gallery3d/ui/SelectionManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 13
    .parameter "jc"

    .prologue
    const/4 v12, 0x0

    .line 440
    sget-object v9, Lcom/android/gallery3d/ui/SelectionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 441
    :try_start_0
    const-string v8, "Gallery2/SelectionManager"

    const-string v10, "<restoreSelection> task begin"

    invoke-static {v8, v10}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 443
    const-string v8, "Gallery2/SelectionManager"

    const-string v10, "<restoreSelection> task cancelled"

    invoke-static {v8, v10}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v9

    .line 505
    :goto_0
    return-object v12

    .line 446
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$300(Lcom/android/gallery3d/ui/SelectionManager;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$000(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_2

    .line 447
    :cond_1
    monitor-exit v9

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 449
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$500(Lcom/android/gallery3d/ui/SelectionManager;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$300(Lcom/android/gallery3d/ui/SelectionManager;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    :goto_1
    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I
    invoke-static {v10, v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$402(Lcom/android/gallery3d/ui/SelectionManager;I)I

    .line 451
    const/4 v3, 0x0

    .line 452
    .local v3, id:Lcom/android/gallery3d/data/Path;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 454
    .local v0, availablePaths:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/data/Path;>;"
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$500(Lcom/android/gallery3d/ui/SelectionManager;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 455
    const/4 v7, 0x0

    .line 456
    .local v7, set:Lcom/android/gallery3d/data/MediaSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$400(Lcom/android/gallery3d/ui/SelectionManager;)I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 457
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$300(Lcom/android/gallery3d/ui/SelectionManager;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 458
    if-eqz v7, :cond_3

    .line 459
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 460
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$000(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 461
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 449
    .end local v0           #availablePaths:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/data/Path;>;"
    .end local v1           #i:I
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v7           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$300(Lcom/android/gallery3d/ui/SelectionManager;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    goto :goto_1

    .line 466
    .restart local v0       #availablePaths:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/data/Path;>;"
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    :cond_5
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$300(Lcom/android/gallery3d/ui/SelectionManager;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/SelectionManager;->access$400(Lcom/android/gallery3d/ui/SelectionManager;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 467
    .local v5, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 468
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaItem;

    .line 469
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 470
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$000(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 471
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 476
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    .line 477
    .local v6, newCnt:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$400(Lcom/android/gallery3d/ui/SelectionManager;)I

    move-result v8

    if-ne v6, v8, :cond_8

    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$400(Lcom/android/gallery3d/ui/SelectionManager;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 479
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$200(Lcom/android/gallery3d/ui/SelectionManager;)Landroid/os/Handler;

    move-result-object v8

    new-instance v10, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob$1;

    invoke-direct {v10, p0}, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob$1;-><init>(Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    :goto_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$000(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v10, 0x0

    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v8, v10}, Lcom/android/gallery3d/ui/SelectionManager;->access$002(Lcom/android/gallery3d/ui/SelectionManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 504
    const-string v8, "Gallery2/SelectionManager"

    const-string v10, "<restoreSelection> task end"

    invoke-static {v8, v10}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    monitor-exit v9

    goto/16 :goto_0

    .line 487
    :cond_8
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v10, 0x0

    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z
    invoke-static {v8, v10}, Lcom/android/gallery3d/ui/SelectionManager;->access$602(Lcom/android/gallery3d/ui/SelectionManager;Z)Z

    .line 488
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
    invoke-static {v8}, Lcom/android/gallery3d/ui/SelectionManager;->access$700(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 489
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager$RestoreSelectionJob;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
    invoke-static {v8, v0}, Lcom/android/gallery3d/ui/SelectionManager;->access$702(Lcom/android/gallery3d/ui/SelectionManager;Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
