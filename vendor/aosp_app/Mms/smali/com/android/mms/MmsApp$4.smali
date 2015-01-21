.class Lcom/android/mms/MmsApp$4;
.super Landroid/content/BroadcastReceiver;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SMS_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    const-string v3, "ready"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 384
    .local v1, isReady:Z
    if-eqz v1, :cond_2

    .line 385
    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 386
    .local v2, simId:I
    if-ltz v2, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v3, v3, Lcom/android/mms/MmsApp;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v3, v3, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v4, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v4, v4, Lcom/android/mms/MmsApp;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsSettings;->getSmsServiceCenter()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    .line 390
    :cond_0
    const-string v3, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSmsStateReceiver#onReceive, mSmsServiceCenter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v5, v5, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v3, v3, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v4, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v4, v4, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    #calls: Lcom/android/mms/MmsApp;->setSmsServiceCenter(ILjava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/mms/MmsApp;->access$300(Lcom/android/mms/MmsApp;ILjava/lang/String;)V

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    iget-object v4, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    #getter for: Lcom/android/mms/MmsApp;->mSmsStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/mms/MmsApp;->access$400(Lcom/android/mms/MmsApp;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    .end local v1           #isReady:Z
    .end local v2           #simId:I
    :cond_2
    return-void
.end method
