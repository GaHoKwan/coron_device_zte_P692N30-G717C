.class Lcom/hf/UI/DownloadingActivity$2;
.super Ljava/util/TimerTask;
.source "DownloadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/DownloadingActivity;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/DownloadingActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/DownloadingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/DownloadingActivity$2;->this$0:Lcom/hf/UI/DownloadingActivity;

    .line 94
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$2;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mDownload:Lcom/hf/download/Download;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$2(Lcom/hf/UI/DownloadingActivity;)Lcom/hf/download/Download;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hf/download/Download;->getProgress()I

    move-result v1

    .line 101
    .local v1, progress:I
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "download"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "progress = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$2;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, message:Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 107
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$2;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method
