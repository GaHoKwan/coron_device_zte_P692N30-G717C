.class Lcom/android/mms/ui/MultiForwardMessageActivity$9;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

.field final synthetic val$it:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->val$it:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1042
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$2300(Lcom/android/mms/ui/MultiForwardMessageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v2

    long-to-int v0, v2

    #setter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v1, v0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1002(Lcom/android/mms/ui/MultiForwardMessageActivity;I)I

    .line 1043
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1044
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->val$it:Landroid/content/Intent;

    const-string v1, "Select_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V
    invoke-static {v0, v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$2400(Lcom/android/mms/ui/MultiForwardMessageActivity;Z)V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$9;->val$it:Landroid/content/Intent;

    const-string v1, "Select_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
