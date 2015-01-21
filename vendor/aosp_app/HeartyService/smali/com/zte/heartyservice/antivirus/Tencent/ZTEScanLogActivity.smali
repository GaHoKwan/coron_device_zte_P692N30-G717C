.class public Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;
.super Landroid/app/Activity;
.source "ZTEScanLogActivity.java"


# instance fields
.field private cleanButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLean:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mListdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

.field private mRecordData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private noVirusRecord:Landroid/widget/TextView;

.field private scanNothing:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListdata:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->doCleanLog()V

    return-void
.end method

.method private doCleanLog()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->removeAllReports()Z

    .line 173
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->onResume()V

    .line 174
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 114
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListdata:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mRecordData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mRecordData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 117
    .local v2, tempData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v1, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mRecordData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "scanDate"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, title:Ljava/lang/String;
    const-string v4, "title"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v4, "record"

    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->getVirusRecordString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListdata:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1           #item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #tempData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iput-object p0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    .line 41
    iput-object p0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x7f0300e3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0e032c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListView:Landroid/widget/ListView;

    .line 45
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->noVirusRecord:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e02d1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->cleanButton:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0e032d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->scanNothing:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->cleanButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->getVirusRecord()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mRecordData:Ljava/util/List;

    .line 67
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->init()V

    .line 68
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListdata:Ljava/util/List;

    const v3, 0x7f030127

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "record"

    aput-object v6, v4, v5

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 71
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListdata:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->noVirusRecord:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->scanNothing:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->noVirusRecord:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->scanNothing:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 68
    nop

    :array_0
    .array-data 0x4
        0xcbt 0x3t 0xet 0x7ft
        0xcct 0x3t 0xet 0x7ft
    .end array-data
.end method
