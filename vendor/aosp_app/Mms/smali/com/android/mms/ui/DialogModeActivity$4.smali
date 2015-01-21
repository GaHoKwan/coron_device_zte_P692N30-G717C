.class Lcom/android/mms/ui/DialogModeActivity$4;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->showSimSelectedDialog(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$it:Landroid/content/Intent;

.field final synthetic val$simListInfobySlot:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$4;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$4;->val$simListInfobySlot:Ljava/util/List;

    iput-object p3, p0, Lcom/android/mms/ui/DialogModeActivity$4;->val$it:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$4;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$100(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 1795
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$4;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$4;->val$simListInfobySlot:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v2

    long-to-int v0, v2

    #setter for: Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I
    invoke-static {v1, v0}, Lcom/android/mms/ui/DialogModeActivity;->access$402(Lcom/android/mms/ui/DialogModeActivity;I)I

    .line 1796
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$4;->val$it:Landroid/content/Intent;

    const-string v1, "Select_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$4;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->confirmSendMessageIfNeeded()V
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$500(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 1799
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1800
    return-void
.end method
