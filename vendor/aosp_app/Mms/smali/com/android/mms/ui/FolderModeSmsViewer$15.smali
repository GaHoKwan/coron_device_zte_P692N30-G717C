.class Lcom/android/mms/ui/FolderModeSmsViewer$15;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->showSimSelectedDialog(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

.field final synthetic val$it:Landroid/content/Intent;

.field final synthetic val$simListInfo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->val$simListInfo:Ljava/util/List;

    iput-object p3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->val$it:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, -0x1

    .line 1599
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->val$simListInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v1, v3

    #setter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSelectedSimId:I
    invoke-static {v2, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2802(Lcom/android/mms/ui/FolderModeSmsViewer;I)I

    .line 1600
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->val$it:Landroid/content/Intent;

    const-string v2, "Select_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1601
    const-string v1, "Mms/FolderModeSmsViewer"

    const-string v2, "  SIM_SELECT_FOR_SEND_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1610
    return-void

    .line 1602
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->val$it:Landroid/content/Intent;

    const-string v2, "Select_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2400(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1605
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->val$it:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1607
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$15;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2400(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
