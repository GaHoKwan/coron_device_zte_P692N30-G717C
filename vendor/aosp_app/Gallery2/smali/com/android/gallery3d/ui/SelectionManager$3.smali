.class Lcom/android/gallery3d/ui/SelectionManager$3;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/SelectionManager;->saveSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$3;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x0

    .line 400
    sget-object v2, Lcom/android/gallery3d/ui/SelectionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_0
    const-string v1, "Gallery2/SelectionManager"

    const-string v3, "<saveSelection> task begin"

    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const-string v1, "Gallery2/SelectionManager"

    const-string v3, "<saveSelection> task cancelled"

    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    monitor-exit v2

    .line 419
    :goto_0
    return-object v5

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager$3;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SelectionManager;->access$000(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager$3;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    #getter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SelectionManager;->access$000(Lcom/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager$3;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/ui/SelectionManager$3;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/SelectionManager;->access$002(Lcom/android/gallery3d/ui/SelectionManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    :goto_1
    :try_start_2
    const-string v1, "Gallery2/SelectionManager"

    const-string v3, "<saveSelection> task end"

    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    monitor-exit v2

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 411
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager$3;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/SelectionManager;->access$002(Lcom/android/gallery3d/ui/SelectionManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
