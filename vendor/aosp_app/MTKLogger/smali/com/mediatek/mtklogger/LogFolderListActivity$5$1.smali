.class Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;
.super Ljava/lang/Thread;
.source "LogFolderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFolderListActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mtklogger/LogFolderListActivity$5;

.field final synthetic val$LogFileItem:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFolderListActivity$5;Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->this$1:Lcom/mediatek/mtklogger/LogFolderListActivity$5;

    iput-object p2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->val$LogFileItem:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->this$1:Lcom/mediatek/mtklogger/LogFolderListActivity$5;

    iget-object v0, v0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->this$1:Lcom/mediatek/mtklogger/LogFolderListActivity$5;

    iget-object v3, v3, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$500(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->val$LogFileItem:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    iget-object v3, v3, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->val$LogFileItem:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->filterFilePath:Ljava/lang/String;

    #calls: Lcom/mediatek/mtklogger/LogFolderListActivity;->clearAllLogs(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$600(Lcom/mediatek/mtklogger/LogFolderListActivity;Ljava/io/File;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->this$1:Lcom/mediatek/mtklogger/LogFolderListActivity$5;

    iget-object v0, v0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$310(Lcom/mediatek/mtklogger/LogFolderListActivity;)I

    .line 284
    return-void
.end method
