.class Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogFolderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/LogFolderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogFolderAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/LogFolderListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 387
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$400(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 401
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 406
    move-object v1, p2

    .line 407
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 411
    :cond_0
    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 413
    .local v0, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$400(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    iget-object v2, v2, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->showName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    return-object v1
.end method
