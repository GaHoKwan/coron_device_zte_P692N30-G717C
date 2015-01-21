.class Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->showIpMessageDownloadDialog(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->val$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1384
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1388
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->val$mode:Landroid/view/ActionMode;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2402(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1389
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->val$item:Landroid/view/MenuItem;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionModeMenu:Landroid/view/MenuItem;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2502(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1390
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1391
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    return-void
.end method
