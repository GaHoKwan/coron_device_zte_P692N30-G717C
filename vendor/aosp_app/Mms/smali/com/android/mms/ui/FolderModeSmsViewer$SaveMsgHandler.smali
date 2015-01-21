.class final Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;
.super Landroid/os/Handler;
.source "FolderModeSmsViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    .line 1435
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1436
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1440
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1456
    :goto_0
    :pswitch_0
    return-void

    .line 1442
    :pswitch_1
    const-string v3, "Mms/FolderModeSmsViewer"

    const-string v4, "exit save message thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1446
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v3

    .line 1447
    .local v1, msgId:J
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageAndSaveToSim(J)V
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2600(Lcom/android/mms/ui/FolderModeSmsViewer;J)V

    goto :goto_0

    .line 1450
    .end local v1           #msgId:J
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 1451
    .local v0, it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageAndSaveToSim(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2700(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/Intent;)V

    goto :goto_0

    .line 1440
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
