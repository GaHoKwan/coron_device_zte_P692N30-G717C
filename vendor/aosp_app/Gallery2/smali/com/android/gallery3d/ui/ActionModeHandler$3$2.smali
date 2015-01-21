.class Lcom/android/gallery3d/ui/ActionModeHandler$3$2;
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

.field final synthetic val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$operation:I

.field final synthetic val$selected:Ljava/util/ArrayList;

.field final synthetic val$supportShare:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILjava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    iput p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$operation:I

    iput-object p4, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$selected:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$supportShare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 607
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$operation:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 610
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->updateSupportedMenuEnabled(Landroid/view/Menu;IZ)V

    .line 611
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$selected:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$selected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->val$supportShare:Z

    if-nez v1, :cond_2

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 614
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 615
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 616
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1100(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 619
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 620
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v0, INVALID_INTENT:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v1, "intent not ready"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1100(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 632
    .end local v0           #INVALID_INTENT:Landroid/content/Intent;
    :cond_3
    const-string v1, "Gallery2/ActionModeHandler"

    const-string v2, "<updateSupportedOperation> menu task cancelled 2"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
