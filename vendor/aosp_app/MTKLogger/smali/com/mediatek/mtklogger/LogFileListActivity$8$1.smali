.class Lcom/mediatek/mtklogger/LogFileListActivity$8$1;
.super Ljava/lang/Thread;
.source "LogFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFileListActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

.field final synthetic val$clearLogWaitingStopDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFileListActivity$8;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iput-object p2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->val$clearLogWaitingStopDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 289
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 290
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 291
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    .line 292
    .local v1, logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    const-string v2, "MTKLogger/LogFileListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log File Item name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iget-object v5, v5, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mRootPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$800(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/mediatek/mtklogger/LogFileListActivity;->clearLogs(Ljava/io/File;)V
    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$1000(Lcom/mediatek/mtklogger/LogFileListActivity;Ljava/io/File;)V

    .line 295
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 298
    .end local v1           #logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->val$clearLogWaitingStopDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->val$clearLogWaitingStopDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->this$1:Lcom/mediatek/mtklogger/LogFileListActivity$8;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$900(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    return-void
.end method
