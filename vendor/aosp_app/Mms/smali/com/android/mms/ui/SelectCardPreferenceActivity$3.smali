.class Lcom/android/mms/ui/SelectCardPreferenceActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SelectCardPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectCardPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 572
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    const-string v2, "slotId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 575
    .local v1, slotId:I
    if-ltz v1, :cond_0

    .line 576
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #calls: Lcom/android/mms/ui/SelectCardPreferenceActivity;->updateSimState(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$500(Lcom/android/mms/ui/SelectCardPreferenceActivity;I)V

    .line 578
    :cond_0
    invoke-static {p1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I
    invoke-static {v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$400(Lcom/android/mms/ui/SelectCardPreferenceActivity;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$600(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$600(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$600(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 584
    const-string v2, "Mms/SelectCardPreferenceActivity"

    const-string v3, "mNumberTextDialog.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v1           #slotId:I
    :cond_2
    return-void
.end method
