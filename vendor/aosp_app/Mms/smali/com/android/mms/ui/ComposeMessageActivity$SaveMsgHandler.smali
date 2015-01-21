.class final Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgHandler;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 8760
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 8761
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8762
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 8766
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 8790
    :goto_0
    :pswitch_0
    return-void

    .line 8768
    :pswitch_1
    const-string v4, "Mms/Txn"

    const-string v5, "exit save message thread"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8769
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 8774
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 8775
    .local v3, type:Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v4

    .line 8777
    .local v1, msgId:J
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getMessageAndSaveToSim(Ljava/lang/String;J)V
    invoke-static {v4, v3, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15900(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;J)V

    goto :goto_0

    .line 8782
    .end local v1           #msgId:J
    .end local v3           #type:Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 8783
    .local v0, it:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getMessageAndSaveToSim(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16000(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 8766
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
