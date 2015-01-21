.class Lcom/android/mms/ui/ComposeMessageActivity$72;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$it:Landroid/content/Intent;

.field final synthetic val$simListInfo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9080
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->val$simListInfo:Ljava/util/List;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->val$it:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 9085
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSimInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSimInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 9086
    :cond_0
    const-string v1, "Mms/compose"

    const-string v2, "which >= mSimInfoList.size(); Async update mSinInfoList."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9087
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9103
    :goto_0
    return-void

    .line 9091
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->val$simListInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v1, v3

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15102(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 9092
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->val$it:Landroid/content/Intent;

    const-string v2, "Select_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 9093
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 9094
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsOneSimSelected:Z
    invoke-static {v1, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 9102
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 9095
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->val$it:Landroid/content/Intent;

    const-string v2, "Select_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 9097
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 9098
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->val$it:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9100
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
