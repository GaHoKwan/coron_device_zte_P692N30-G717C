.class public Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;,
        Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;,
        Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
    }
.end annotation


# instance fields
.field appIcons:[I

.field listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private listViewCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;

.field mContext:Landroid/content/Context;

.field private mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->appIcons:[I

    .line 111
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    .line 32
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->appIcons:[I

    .line 111
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    .line 23
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    .line 24
    invoke-static {p2}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mContext:Landroid/content/Context;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    return-object p1
.end method


# virtual methods
.method public add(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelLoadData()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->cancel(Z)Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    .line 195
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listViewCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;->updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public loadData(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->cancelLoadData()V

    .line 186
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;-><init>(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    .line 187
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public remove(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "postion"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    .line 86
    const-string v0, "suzaiqiang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItems :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V
    .locals 0
    .parameter "listViewCallBacks"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->listViewCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;

    .line 82
    return-void
.end method
