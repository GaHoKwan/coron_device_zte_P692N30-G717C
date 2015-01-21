.class public Lcom/mediatek/connectivity/CdsDuHelperActivity;
.super Landroid/app/Activity;
.source "CdsDuHelperActivity.java"


# instance fields
.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAppUsageReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnClear:Landroid/widget/Button;

.field private mBtnExit:Landroid/widget/Button;

.field private mBtnSnap:Landroid/widget/Button;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListview:Landroid/widget/ListView;

.field private mMyArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThis:Lcom/mediatek/connectivity/CdsDuHelperActivity;

.field private mToast:Landroid/widget/Toast;

.field private mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;-><init>(Lcom/mediatek/connectivity/CdsDuHelperActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAppUsageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Lcom/mediatek/connectivity/CdsDuHelperActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mThis:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 84
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mListview:Landroid/widget/ListView;

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mToast:Landroid/widget/Toast;

    .line 86
    iput-object p0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mThis:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    .line 88
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mList:Ljava/util/ArrayList;

    const v3, 0x7f03000f

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "data"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 94
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mBtnSnap:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mBtnSnap:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/connectivity/CdsDuHelperActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/connectivity/CdsDuHelperActivity$1;-><init>(Lcom/mediatek/connectivity/CdsDuHelperActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mBtnExit:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mBtnExit:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/connectivity/CdsDuHelperActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/connectivity/CdsDuHelperActivity$2;-><init>(Lcom/mediatek/connectivity/CdsDuHelperActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mBtnClear:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mBtnClear:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;-><init>(Lcom/mediatek/connectivity/CdsDuHelperActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void

    .line 88
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAppUsageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "mediatek.net.datausg.DATA_INFO_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAppUsageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    return-void
.end method
