.class public Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;
.super Ljava/lang/Object;
.source "FileManagerSearchActivity.java"

# interfaces
.implements Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchListener"
.end annotation


# static fields
.field private static final FRIST_UPDATE_COUNT:I = 0x14

.field private static final NEED_UPDATE_LIST:I = 0x6


# instance fields
.field private mCount:I

.field private mIsResultSet:Z

.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileManagerSearchActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 178
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mIsResultSet:Z

    .line 171
    iput v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mCount:I

    .line 179
    if-nez p2, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 182
    :cond_0
    #setter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$002(Lcom/mediatek/filemanager/FileManagerSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public onTaskPrepare()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->changeMode(I)V

    .line 194
    return-void
.end method

.method public onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 8
    .parameter "progressInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->isFailInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$100(Lcom/mediatek/filemanager/FileManagerSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mIsResultSet:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getTotal()J

    move-result-wide v1

    #setter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$202(Lcom/mediatek/filemanager/FileManagerSearchActivity;J)J

    .line 201
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$100(Lcom/mediatek/filemanager/FileManagerSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$100(Lcom/mediatek/filemanager/FileManagerSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$000(Lcom/mediatek/filemanager/FileManagerSearchActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J
    invoke-static {v4}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->access$200(Lcom/mediatek/filemanager/FileManagerSearchActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iput-boolean v7, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mIsResultSet:Z

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getFileInfo()Lcom/mediatek/filemanager/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getFileInfo()Lcom/mediatek/filemanager/FileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/FileInfoManager;->addItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 209
    :cond_1
    iget v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mCount:I

    .line 210
    iget v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager;->updateSearchList()V

    .line 214
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 215
    iput v6, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->mCount:I

    .line 219
    :cond_2
    return-void
.end method

.method public onTaskResult(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager;->updateSearchList()V

    .line 188
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
