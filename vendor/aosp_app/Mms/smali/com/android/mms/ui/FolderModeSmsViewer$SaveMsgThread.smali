.class final Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;
.super Ljava/lang/Thread;
.source "FolderModeSmsViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveMsgThread"
.end annotation


# instance fields
.field private msgId:J

.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;J)V
    .locals 2
    .parameter
    .parameter "id"

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->msgId:J

    .line 1415
    iput-wide p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->msgId:J

    .line 1416
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1418
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1419
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1420
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    new-instance v2, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/os/Looper;)V

    #setter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2402(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1422
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2400(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1423
    .local v0, msg:Landroid/os/Message;
    iget-wide v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->msgId:J

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1424
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$300(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1425
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2500(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1429
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1430
    return-void

    .line 1427
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2400(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
