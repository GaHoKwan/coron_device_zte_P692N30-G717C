.class Lcom/mediatek/mtklogger/LogFileListActivity$6;
.super Ljava/lang/Thread;
.source "LogFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;->initLogItemList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFileListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$6;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    const-string v2, "MTKLogger/LogFileListActivity"

    const-string v3, "Calculate log file\'s size"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$6;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    .line 267
    .local v1, logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/mtklogger/LogFileListActivity$6;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$800(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/mtklogger/utils/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->setFileSize(J)V

    goto :goto_0

    .line 269
    .end local v1           #logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$6;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$900(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    return-void
.end method
