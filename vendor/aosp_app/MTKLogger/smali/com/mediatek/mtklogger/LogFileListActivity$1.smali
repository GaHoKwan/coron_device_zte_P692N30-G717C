.class Lcom/mediatek/mtklogger/LogFileListActivity$1;
.super Landroid/os/Handler;
.source "LogFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;
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
    .line 60
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$1;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$1;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$000(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 65
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$1;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$102(Lcom/mediatek/mtklogger/LogFileListActivity;I)I

    .line 66
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$1;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$1;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I
    invoke-static {v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$100(Lcom/mediatek/mtklogger/LogFileListActivity;)I

    move-result v1

    #calls: Lcom/mediatek/mtklogger/LogFileListActivity;->updateTitle(I)V
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$200(Lcom/mediatek/mtklogger/LogFileListActivity;I)V

    .line 67
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$1;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$000(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 70
    :cond_1
    return-void
.end method
