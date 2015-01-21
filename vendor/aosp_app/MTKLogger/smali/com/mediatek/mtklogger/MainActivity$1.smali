.class Lcom/mediatek/mtklogger/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    const-string v5, "MTKLogger/MainActivity"

    const-string v6, "ACTION_LOG_STATE_CHANGED"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->stopWaitingDialog()V
    invoke-static {v5}, Lcom/mediatek/mtklogger/MainActivity;->access$000(Lcom/mediatek/mtklogger/MainActivity;)V

    .line 129
    const-string v5, "fail_reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, failReason:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    const-string v5, "MTKLogger/MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_LOG_STATE_CHANGED : failReason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    iget-object v6, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->analyzeReason(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/mediatek/mtklogger/MainActivity;->access$100(Lcom/mediatek/mtklogger/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 134
    :cond_0
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->updateUI()V
    invoke-static {v5}, Lcom/mediatek/mtklogger/MainActivity;->access$200(Lcom/mediatek/mtklogger/MainActivity;)V

    .line 156
    .end local v3           #failReason:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    const-string v5, "stage_event"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    const-string v5, "MTKLogger/MainActivity"

    const-string v6, "EXTRA_RUNNING_STAGE_CHANGE_EVENT"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->changeWaitingDialog()V
    invoke-static {v5}, Lcom/mediatek/mtklogger/MainActivity;->access$300(Lcom/mediatek/mtklogger/MainActivity;)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v5, "extra_key_from_taglog"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 139
    const-string v5, "MTKLogger/MainActivity"

    const-string v6, "EXTRA_KEY_FROM_TAGLOG"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-virtual {v5}, Lcom/mediatek/mtklogger/MainActivity;->finish()V

    goto :goto_0

    .line 141
    :cond_4
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    const-string v5, "MTKLogger/MainActivity"

    const-string v6, "System time changed, need to update UI"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/mediatek/mtklogger/MainActivity;->access$400(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mtklogger/utils/Utils;->checkLogStarted(Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 144
    .local v4, isStart:Z
    if-eqz v4, :cond_5

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 146
    .local v1, currentTime:J
    const-string v5, "MTKLogger/MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log is running, need to notify user this log start time change event.currentTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/mediatek/mtklogger/MainActivity;->access$400(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "system_time_reset"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "begin_recording_time"

    invoke-interface {v5, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    const-string v5, "MTKLogger/MainActivity"

    const-string v6, "Reset log starting time and store to shared preference finished."

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v1           #currentTime:J
    :cond_5
    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity$1;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->updateUI()V
    invoke-static {v5}, Lcom/mediatek/mtklogger/MainActivity;->access$200(Lcom/mediatek/mtklogger/MainActivity;)V

    goto/16 :goto_0
.end method
