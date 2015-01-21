.class public Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;
.super Landroid/app/Activity;
.source "ZTESMSInterceptActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;


# static fields
.field public static final MSG_BLOCK:I = 0x3

.field public static final MSG_LOAD_DATA:I = 0x0

.field public static final MSG_NETWORK_ERROR:I = 0x2

.field public static final MSG_REFRESH:I = 0x1


# instance fields
.field private addCallbackFlag:Z

.field private buttonLayout:Landroid/view/View;

.field private deleteButton:Landroid/widget/Button;

.field private emptyRativelayout:Landroid/view/View;

.field private emptyText:Landroid/widget/TextView;

.field private emptyTxtView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSmsCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

.field private mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

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

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAll:Z

    .line 75
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->addCallbackFlag:Z

    .line 258
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$4;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->loadDataList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAll:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->setAllListCheckStates(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyRativelayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->restoreSelectedItems()V

    return-void
.end method

.method private deleteSelectedItems()V
    .locals 9

    .prologue
    .line 348
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v5

    .line 349
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

    .line 350
    .local v3, pos:J
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;

    long-to-int v8, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->delete(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v3           #pos:J
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->clearChoices()V

    .line 353
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->notifyDataSetChanged()V

    .line 354
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->updateCheckAll()V

    .line 355
    return-void
.end method

.method private loadDataList()V
    .locals 4

    .prologue
    .line 331
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->getAll()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method

.method private restoreSelectedItems()V
    .locals 9

    .prologue
    .line 338
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v5

    .line 339
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

    .line 340
    .local v3, pos:J
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;

    long-to-int v8, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->recover(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v3           #pos:J
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->clearChoices()V

    .line 343
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->notifyDataSetChanged()V

    .line 344
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->updateCheckAll()V

    .line 345
    return-void
.end method

.method private setAllListCheckStates(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 151
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->updateCheckAll()V

    goto :goto_0
.end method

.method private updateCheckAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAllButton:Landroid/widget/Button;

    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 371
    iput-boolean v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAll:Z

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAllButton:Landroid/widget/Button;

    const v1, 0x7f0a0314

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAll:Z

    goto :goto_1

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->deleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0e0069

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->setContentView(I)V

    .line 163
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mContext:Landroid/content/Context;

    .line 165
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    .line 166
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    .line 167
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyTxtView:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyTxtView:Landroid/widget/TextView;

    const v1, 0x7f0a0240

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createSMSDao()Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 177
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyText:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyRativelayout:Landroid/view/View;

    .line 180
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->deleteButton:Landroid/widget/Button;

    .line 181
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->restoreButton:Landroid/widget/Button;

    .line 183
    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAllButton:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->deleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->restoreButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->buttonLayout:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    return-void
.end method

.method public onItemCheckStateChanged(IZ)V
    .locals 1
    .parameter "pos"
    .parameter "isChecked"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->updateCheckAll()V

    .line 392
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 325
    const-class v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v0

    invoke-interface {v0}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/aresengine/DataHandler;->removeCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->addCallbackFlag:Z

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 291
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->setAllToBeRead()V

    .line 292
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->addCallbackFlag:Z

    if-nez v1, :cond_0

    .line 295
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    const-string v2, "incoming_sms"

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v1

    invoke-interface {v1}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsCallBack:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/DataHandler;->addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->addCallbackFlag:Z

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyRativelayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "from"

    const-string v2, "intercept"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    const-string v1, "zhangchi"

    const-string v2, "send EXTRA_NOTIFICATION_FROM_INTERCEPT_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 305
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyRativelayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSetCheckBox(Landroid/widget/CheckBox;I)V
    .locals 1
    .parameter "checkBox"
    .parameter "pos"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    :cond_0
    return-void
.end method
