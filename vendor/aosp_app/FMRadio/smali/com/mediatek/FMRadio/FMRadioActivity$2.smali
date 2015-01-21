.class Lcom/mediatek/FMRadio/FMRadioActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    const-string v2, "FmRx/Activity"

    const-string v3, "Sd card mounted"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v2, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SaveRecording"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    .line 350
    .local v1, df:Lcom/mediatek/FMRadio/FMRecordDialogFragment;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSaveRecordingDialog()V
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 352
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v4, 0x7f040030

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    .line 354
    :cond_3
    const-string v2, "FmRx/Activity"

    const-string v3, "Sd card Eject or unmounted"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
