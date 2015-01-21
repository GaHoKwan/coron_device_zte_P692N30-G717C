.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;
.super Landroid/content/BroadcastReceiver;
.source "ManualNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/ManualNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x7d2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPhoneSwitchingMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTargetSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 184
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    :cond_0
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    const-string v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 188
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RADIO_TECHNOLOGY_CHANGED: mPhoneSwitchingMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 189
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsExternalSlot:Z
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$500(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I
    invoke-static {v5, v8}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$702(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    .line 197
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 198
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/4 v6, 0x2

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v5, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$102(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    .line 199
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/16 v6, 0x3ed

    invoke-virtual {v5, v6}, Landroid/app/Activity;->removeDialog(I)V

    .line 201
    :cond_4
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I
    invoke-static {v5, v9}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$702(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    goto :goto_1

    .line 202
    :cond_6
    const-string v5, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 205
    const-string v5, "simDetectStatus"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, simDetectStatus:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_DETECTED: mTargetSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",simDetectStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I
    invoke-static {v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v6

    if-eq v5, v6, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 212
    .local v4, telephony:Lcom/android/internal/telephony/ITelephony;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v6

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isSimInserted(Lcom/android/internal/telephony/ITelephony;I)Z
    invoke-static {v5, v4, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$900(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v2

    .line 213
    .local v2, simInserted:Z
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_DETECTED: simInserted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 214
    if-nez v2, :cond_1

    .line 215
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 218
    .end local v1           #simDetectStatus:Ljava/lang/String;
    .end local v2           #simInserted:Z
    .end local v4           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_7
    const-string v5, "com.mediatek.action.PS_DETACH_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    const-string v5, "com.mediatek.intent.extra.SIM_ID"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, slotId:I
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PS_DETACH_DONE: slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mWaitDataDisconnected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z
    invoke-static {v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1000(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1000(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xfa0

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z
    invoke-static {v5, v8}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1002(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)Z

    goto/16 :goto_0
.end method
