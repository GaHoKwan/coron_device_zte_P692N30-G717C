.class Lcom/android/mms/ui/ComposeMessageActivity$105;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 11843
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 11846
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11847
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendSketch:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11848
    const-string v0, "Mms/ipmsg/compose"

    const-string v1, "mSendSketch, wait activity resume."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11857
    :cond_0
    :goto_0
    return-void

    .line 11852
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 11853
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0xca

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendImage(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20300(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 11854
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendSketch:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
