.class public Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;
.super Landroid/app/Activity;
.source "ZTECallsInterceptActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;


# static fields
.field public static final MSG_BLOCK:I = 0x3

.field public static final MSG_LOAD_DATA:I = 0x0

.field public static final MSG_NETWORK_ERROR:I = 0x2

.field public static final MSG_REFRESH:I = 0x1


# instance fields
.field private addCallbackFlag:Z

.field private buttonLayout:Landroid/view/View;

.field private deleteButton:Landroid/widget/Button;

.field private emptyImage:Landroid/widget/ImageView;

.field private emptyRalativelayout:Landroid/view/View;

.field private emptyText:Landroid/widget/TextView;

.field private mCallCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

.field private mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mThread:Ljava/lang/Thread;

.field private restoreButton:Landroid/widget/Button;

.field private selectAll:Z

.field private selectAllButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAll:Z

    .line 75
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->addCallbackFlag:Z

    .line 255
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$4;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->loadDataList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->restoreSelectedItems()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAll:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->setAllListCheckStates(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyRalativelayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteSelectedItems()V
    .locals 9

    .prologue
    .line 353
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v5

    .line 354
    .local v5, positions:[J
    move-object v0, v5

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 356
    .local v3, pos:J
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;

    long-to-int v8, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->delete(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v3           #pos:J
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->clearChoices()V

    .line 359
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->notifyDataSetChanged()V

    .line 360
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->updateCheckAll()V

    .line 361
    return-void
.end method

.method private loadDataList()V
    .locals 4

    .prologue
    .line 337
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->getAll()Ljava/util/List;

    move-result-object v0

    .line 338
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void
.end method

.method private restoreSelectedItems()V
    .locals 9

    .prologue
    .line 343
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v5

    .line 344
    .local v5, positions:[J
    move-object v0, v5

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 345
    .local v3, pos:J
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;

    long-to-int v8, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)Z

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v3           #pos:J
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->clearChoices()V

    .line 348
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->notifyDataSetChanged()V

    .line 349
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->updateCheckAll()V

    .line 350
    return-void
.end method

.method private setAllListCheckStates(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 151
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->updateCheckAll()V

    goto :goto_0
.end method

.method private updateCheckAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAllButton:Landroid/widget/Button;

    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 377
    iput-boolean v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAll:Z

    .line 383
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAllButton:Landroid/widget/Button;

    const v1, 0x7f0a0314

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAll:Z

    goto :goto_1

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->deleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->setContentView(I)V

    .line 163
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mContext:Landroid/content/Context;

    .line 164
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    .line 165
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    .line 167
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createCallLogDao()Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    .line 171
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 173
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyText:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyImage:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyRalativelayout:Landroid/view/View;

    .line 176
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->deleteButton:Landroid/widget/Button;

    .line 177
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->restoreButton:Landroid/widget/Button;

    .line 179
    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAllButton:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->deleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->restoreButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->buttonLayout:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 334
    return-void
.end method

.method public onItemCheckStateChanged(IZ)V
    .locals 1
    .parameter "pos"
    .parameter "isChecked"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->updateCheckAll()V

    .line 398
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 326
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v0

    invoke-interface {v0}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/DataHandler;->removeCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 327
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v0

    invoke-interface {v0}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/DataHandler;->removeCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->addCallbackFlag:Z

    .line 329
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->setAllToBeRead()V

    .line 291
    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->addCallbackFlag:Z

    if-nez v1, :cond_0

    .line 292
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v2, "incoming_call"

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v1

    invoke-interface {v1}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 293
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v2, "system_call"

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v1

    invoke-interface {v1}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->addCallbackFlag:Z

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyRalativelayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "from"

    const-string v2, "intercept"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    const-string v1, "zhangchi"

    const-string v2, "send EXTRA_NOTIFICATION_FROM_INTERCEPT_CALL2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 320
    return-void

    .line 305
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyRalativelayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSetCheckBox(Landroid/widget/CheckBox;I)V
    .locals 1
    .parameter "checkBox"
    .parameter "pos"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    :cond_0
    return-void
.end method
