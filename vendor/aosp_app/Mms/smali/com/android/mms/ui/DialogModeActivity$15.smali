.class Lcom/android/mms/ui/DialogModeActivity$15;
.super Landroid/content/BroadcastReceiver;
.source "DialogModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3566
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3569
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3570
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3571
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1500(Lcom/android/mms/ui/DialogModeActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1500(Lcom/android/mms/ui/DialogModeActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3572
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1500(Lcom/android/mms/ui/DialogModeActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3574
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mSimHanlder:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$1800(Lcom/android/mms/ui/DialogModeActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/DialogModeActivity$15$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DialogModeActivity$15$1;-><init>(Lcom/android/mms/ui/DialogModeActivity$15;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3581
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V
    invoke-static {v1}, Lcom/android/mms/ui/DialogModeActivity;->access$100(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 3582
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3584
    :cond_1
    return-void
.end method
