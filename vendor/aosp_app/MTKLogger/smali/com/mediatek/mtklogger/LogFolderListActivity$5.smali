.class Lcom/mediatek/mtklogger/LogFolderListActivity$5;
.super Ljava/lang/Object;
.source "LogFolderListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFolderListActivity;->clearAllLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearing:Z
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$200(Lcom/mediatek/mtklogger/LogFolderListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #setter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearing:Z
    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$202(Lcom/mediatek/mtklogger/LogFolderListActivity;Z)Z

    .line 273
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-virtual {v2, v3}, Lcom/mediatek/mtklogger/LogFolderListActivity;->showDialog(I)V

    .line 275
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    iget-object v3, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$400(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #setter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearDone:I
    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$302(Lcom/mediatek/mtklogger/LogFolderListActivity;I)I

    .line 276
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$400(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    .line 277
    .local v0, LogFileItem:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;
    new-instance v2, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity$5;Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;)V

    invoke-virtual {v2}, Lcom/mediatek/mtklogger/LogFolderListActivity$5$1;->start()V

    goto :goto_1

    .line 287
    .end local v0           #LogFileItem:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;
    :cond_1
    new-instance v2, Lcom/mediatek/mtklogger/LogFolderListActivity$5$2;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$5$2;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity$5;)V

    invoke-virtual {v2}, Lcom/mediatek/mtklogger/LogFolderListActivity$5$2;->start()V

    goto :goto_0
.end method
