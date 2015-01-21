.class Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
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
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private final mOperation:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "operation"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 661
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 663
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 664
    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 665
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 13
    .parameter "jc"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 669
    const/4 v2, 0x0

    .line 670
    .local v2, index:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$400(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 671
    .local v5, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v6, 0x1

    .line 672
    .local v6, result:I
    iget v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    const v10, 0x7f0b018b

    if-ne v9, v10, :cond_3

    .line 674
    .local v3, isDelete:Z
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v9, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 675
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 677
    .local v1, id:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->hasCancelMultiOperation:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_4

    .line 678
    :cond_0
    const/4 v6, 0x3

    .line 698
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :cond_1
    if-eqz v3, :cond_2

    .line 700
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getClusterDeleteOperation()Z

    move-result v4

    .line 701
    .local v4, isDeleteOperation:Z
    invoke-static {v8}, Lcom/android/gallery3d/data/ClusterAlbumSet;->setClusterDeleteOperation(Z)V

    .line 702
    if-eqz v4, :cond_2

    .line 703
    const-string v9, "Gallery2/MenuExecutor"

    const-string v10, "deleting cluster complete, force reload all!"

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v5}, Lcom/android/gallery3d/data/DataManager;->forceRefreshAll()V

    .line 708
    .end local v4           #isDeleteOperation:Z
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->hasCancelMultiOperation:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$002(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 709
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$902(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 710
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v8, v6, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 711
    const-string v8, "Gallery2PerformanceTestCase2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Performance Auto Test][Gallery_011] Delete 100 photos test end ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_2
    const/4 v8, 0x0

    return-object v8

    .end local v3           #isDelete:Z
    :cond_3
    move v3, v8

    .line 672
    goto :goto_0

    .line 681
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:Lcom/android/gallery3d/data/Path;
    .restart local v3       #isDelete:Z
    :cond_4
    if-eqz v3, :cond_5

    .line 682
    :try_start_1
    const-string v9, "cluster"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 685
    const-string v9, "Gallery2/MenuExecutor"

    const-string v10, "deleting cluster, use special logic for culster object!"

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterAlbumSet;->setClusterDeleteOperation(Z)V

    .line 689
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    invoke-static {v9, v5, p1, v10, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 690
    const/4 v6, 0x2

    .line 692
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    add-int/lit8 v2, v2, 0x1

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v9, v2, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->access$800(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 694
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v7

    .line 695
    .local v7, th:Ljava/lang/Throwable;
    :try_start_2
    const-string v9, "Gallery2/MenuExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to execute operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 698
    if-eqz v3, :cond_7

    .line 700
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getClusterDeleteOperation()Z

    move-result v4

    .line 701
    .restart local v4       #isDeleteOperation:Z
    invoke-static {v8}, Lcom/android/gallery3d/data/ClusterAlbumSet;->setClusterDeleteOperation(Z)V

    .line 702
    if-eqz v4, :cond_7

    .line 703
    const-string v9, "Gallery2/MenuExecutor"

    const-string v10, "deleting cluster complete, force reload all!"

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v5}, Lcom/android/gallery3d/data/DataManager;->forceRefreshAll()V

    .line 708
    .end local v4           #isDeleteOperation:Z
    :cond_7
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->hasCancelMultiOperation:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$002(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 709
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$902(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 710
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v8, v6, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 711
    const-string v8, "Gallery2PerformanceTestCase2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Performance Auto Test][Gallery_011] Delete 100 photos test end ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 698
    .end local v7           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_8

    .line 700
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getClusterDeleteOperation()Z

    move-result v4

    .line 701
    .restart local v4       #isDeleteOperation:Z
    invoke-static {v8}, Lcom/android/gallery3d/data/ClusterAlbumSet;->setClusterDeleteOperation(Z)V

    .line 702
    if-eqz v4, :cond_8

    .line 703
    const-string v10, "Gallery2/MenuExecutor"

    const-string v11, "deleting cluster complete, force reload all!"

    invoke-static {v10, v11}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v5}, Lcom/android/gallery3d/data/DataManager;->forceRefreshAll()V

    .line 708
    .end local v4           #isDeleteOperation:Z
    :cond_8
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->hasCancelMultiOperation:Z
    invoke-static {v10, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$002(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 709
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z
    invoke-static {v10, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$902(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 710
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v8, v6, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 711
    const-string v8, "Gallery2PerformanceTestCase2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance Auto Test][Gallery_011] Delete 100 photos test end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v9
.end method
