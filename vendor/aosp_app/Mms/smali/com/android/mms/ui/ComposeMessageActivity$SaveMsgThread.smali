.class final Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;
.super Ljava/lang/Thread;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveMsgThread"
.end annotation


# instance fields
.field private msgId:J

.field private msgType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter "type"
    .parameter "id"

    .prologue
    .line 8738
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->msgType:Ljava/lang/String;

    .line 8737
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->msgId:J

    .line 8739
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->msgType:Ljava/lang/String;

    .line 8740
    iput-wide p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->msgId:J

    .line 8741
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 8743
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 8744
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8745
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Looper;)V

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15802(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 8747
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8748
    .local v0, msg:Landroid/os/Message;
    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->msgId:J

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 8749
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->msgType:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8750
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSimCount:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 8751
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8755
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 8756
    return-void

    .line 8753
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SaveMsgThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
