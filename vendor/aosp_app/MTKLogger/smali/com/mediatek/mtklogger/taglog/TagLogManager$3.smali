.class Lcom/mediatek/mtklogger/taglog/TagLogManager$3;
.super Ljava/util/TimerTask;
.source "TagLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;->monitorProgressDialogBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2900(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 943
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2902(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 947
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/mtklogger/taglog/ZipManager;->getZippedFilesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method
