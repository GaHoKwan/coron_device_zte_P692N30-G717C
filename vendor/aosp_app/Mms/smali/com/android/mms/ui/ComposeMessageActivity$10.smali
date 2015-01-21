.class Lcom/android/mms/ui/ComposeMessageActivity$10;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 944
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAttachmentEditorHandler, handleMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachClickTime:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v0

    .line 947
    .local v0, oldTime:J
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachClickTime:J
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2102(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 948
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachClickTime:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachClickTime:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 949
    const-string v2, "Mms/compose"

    const-string v3, "mAttachmentEditorHandler, ignore a click if too close"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCompressingImage:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    const-string v2, "MmsTest"

    const-string v3, "is attaching image, can not operate attachment"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 961
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mClickCanResponse:Z

    if-eqz v2, :cond_0

    .line 962
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean v6, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mClickCanResponse:Z

    .line 965
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditingSlideshow:Z
    invoke-static {v2, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 967
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 973
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/mms/ext/IMmsCompose;->isDualSendButtonEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 976
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->send_sim_id:I
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/mediatek/mms/ext/IMmsCompose;->getSendParameter(Landroid/os/Message;I)I

    move-result v3

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->send_sim_id:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2602(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 982
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkRecipientsCount()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 992
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mClickCanResponse:Z

    if-eqz v2, :cond_4

    .line 993
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean v6, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mClickCanResponse:Z

    .line 994
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 998
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->hideInputMethod()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 1004
    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v3, "SetDefaultLayout"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "SetDefaultLayout"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1009
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->hideInputMethod()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1011
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V
    invoke-static {v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto/16 :goto_0

    .line 1015
    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    goto/16 :goto_0

    .line 1020
    :pswitch_6
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->removeExternalAttachment()V

    goto/16 :goto_0

    .line 1023
    :pswitch_7
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->removeSlidesAttachment()V

    goto/16 :goto_0

    .line 958
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
