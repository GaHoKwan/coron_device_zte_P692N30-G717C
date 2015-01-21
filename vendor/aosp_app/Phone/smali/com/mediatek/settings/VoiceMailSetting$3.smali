.class Lcom/mediatek/settings/VoiceMailSetting$3;
.super Landroid/os/Handler;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/VoiceMailSetting;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1156
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1157
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1183
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget-boolean v2, v2, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget-object v2, v2, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget-boolean v2, v2, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    #calls: Lcom/mediatek/settings/VoiceMailSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->access$300(Lcom/mediatek/settings/VoiceMailSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 1186
    .local v0, done:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1188
    const-string v2, "Settings/VoiceMailSetting"

    const-string v3, "All VM reverts done"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    const/16 v3, 0x25b

    #calls: Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/VoiceMailSetting;->access$500(Lcom/mediatek/settings/VoiceMailSetting;I)V

    .line 1191
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-virtual {v2}, Lcom/mediatek/settings/VoiceMailSetting;->onRevertDone()V

    .line 1193
    :cond_2
    return-void

    .line 1159
    .end local v0           #done:Z
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iput-object v1, v2, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1161
    const-string v2, "Settings/VoiceMailSetting"

    const-string v3, "VM revert complete msg"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$3;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    #getter for: Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->access$200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1168
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in reverting fwd# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :goto_2
    const-string v2, "Settings/VoiceMailSetting"

    const-string v3, "FWD revert complete msg "

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1173
    :cond_3
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success in reverting fwd# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1183
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1157
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
