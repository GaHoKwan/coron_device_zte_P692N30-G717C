.class Lcom/android/gallery3d/ui/ActionModeHandler$3$3;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    iput-object p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 649
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1302(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 652
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 654
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1100(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 663
    :goto_1
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 657
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$3;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 661
    :cond_1
    const-string v0, "Gallery2/ActionModeHandler"

    const-string v1, "<updateSupportedOperation> menu task cancelled 4"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
