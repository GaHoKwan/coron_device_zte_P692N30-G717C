.class Lcom/android/gallery3d/ui/ActionModeHandler$3;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
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
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 9
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$700(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$800(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v4

    .line 598
    .local v4, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Ljava/util/ArrayList;)I
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;Ljava/util/ArrayList;)I

    move-result v3

    .line 599
    .local v3, operation:I
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 600
    .local v5, supportShare:Z
    :goto_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    const-string v0, "Gallery2/ActionModeHandler"

    const-string v1, "<updateSupportedOperation> menu task cancelled 1"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_1
    return-object v8

    .line 599
    .end local v5           #supportShare:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 604
    .restart local v5       #supportShare:Z
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$700(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILjava/util/ArrayList;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    const-string v0, "Gallery2/ActionModeHandler"

    const-string v1, "<updateSupportedOperation> computeSharingIntent begin"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1200(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v6

    .line 642
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "Gallery2/ActionModeHandler"

    const-string v1, "<updateSupportedOperation> computeSharingIntent end"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    const-string v0, "Gallery2/ActionModeHandler"

    const-string v1, "<updateSupportedOperation> menu task cancelled 3"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$700(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;

    invoke-direct {v1, p0, p1, v6}, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    const-string v0, "Gallery2/ActionModeHandler"

    const-string v1, "<updateSupportedOperation> menu task done"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
