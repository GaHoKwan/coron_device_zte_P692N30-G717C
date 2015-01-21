.class Lcom/android/gallery3d/ui/ActionModeHandler$5;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->convertAndShare(Landroid/content/Intent;)V
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$5;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .parameter "jc"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->processIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;)V
    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1600(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;)V

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$700(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$5$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$5$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->safeStartIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1500(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;)V

    .line 808
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
