.class Lcom/hf/UI/DownloadingActivity$3;
.super Ljava/lang/Object;
.source "DownloadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/hf/UI/DownloadingActivity;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    iput-object p2, p0, Lcom/hf/UI/DownloadingActivity$3;->val$timer:Ljava/util/Timer;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mDownload:Lcom/hf/download/Download;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$2(Lcom/hf/UI/DownloadingActivity;)Lcom/hf/download/Download;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    iget-object v4, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->url:Ljava/lang/String;
    invoke-static {v4}, Lcom/hf/UI/DownloadingActivity;->access$4(Lcom/hf/UI/DownloadingActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hf/download/Download;->down(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->val$timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 118
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mDownload:Lcom/hf/download/Download;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$2(Lcom/hf/UI/DownloadingActivity;)Lcom/hf/download/Download;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hf/download/Download;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, path:Ljava/lang/String;
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "download"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "failed"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, message:Landroid/os/Message;
    const/16 v2, 0x66

    iput v2, v0, Landroid/os/Message;->what:I

    .line 126
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    :goto_0
    return-void

    .line 130
    .end local v0           #message:Landroid/os/Message;
    :cond_2
    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 132
    .restart local v0       #message:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 133
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 137
    .end local v0           #message:Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 138
    .restart local v0       #message:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v0, Landroid/os/Message;->what:I

    .line 139
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/hf/UI/DownloadingActivity$3;->this$0:Lcom/hf/UI/DownloadingActivity;

    #getter for: Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/DownloadingActivity;->access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
