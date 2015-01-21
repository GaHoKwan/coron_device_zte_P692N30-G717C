.class public Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;
.super Landroid/app/Activity;
.source "AddToBlackListAlertII.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "AddToBlackListAlertII"

.field protected static final WHAT:I = 0x123456


# instance fields
.field private adapter:Lcom/zte/heartyservice/intercept/Common/GridAdapter;

.field addBlackList:Z

.field closeButton:Landroid/widget/Button;

.field private gridview:Landroid/widget/GridView;

.field index:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Common/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMapForAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;

.field mShowPhoneNumber:Landroid/widget/TextView;

.field mTagType:I

.field mTitle:Landroid/widget/TextView;

.field m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

.field m_MyDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

.field okButton:Landroid/widget/Button;

.field private phoneNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "content://com.zte.heartyservice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput v1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;

    .line 80
    sget v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_NONE:I

    iput v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTagType:I

    .line 81
    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->addBlackList:Z

    .line 250
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ltmsdk/common/module/numbermarker/NumMarkerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;

    return-object v0
.end method


# virtual methods
.method public getNetState(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, wifiConnected:Z
    const/4 v2, 0x0

    .line 379
    .local v2, mobileConnected:Z
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 382
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 383
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 384
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 385
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 391
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v5, v4

    .line 396
    :cond_1
    return v5

    :cond_2
    move v3, v5

    .line 384
    goto :goto_0

    :cond_3
    move v2, v5

    .line 385
    goto :goto_1

    .line 387
    :cond_4
    const/4 v3, 0x0

    .line 388
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v6, 0x7f03007d

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->setContentView(I)V

    .line 91
    const-class v6, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v6

    check-cast v6, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;

    .line 93
    new-instance v6, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    .line 94
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->open()V

    .line 96
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;

    invoke-virtual {v6}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->getTagNameMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 97
    .local v4, mMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 98
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->list:Ljava/util/List;

    .line 100
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mMapForAction:Ljava/util/Map;

    .line 101
    const/4 v6, 0x0

    iput v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    .line 102
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 105
    .local v2, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mMapForAction:Ljava/util/Map;

    iget v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 107
    .local v5, mValue:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->list:Ljava/util/List;

    new-instance v7, Lcom/zte/heartyservice/intercept/Common/GridInfo;

    invoke-direct {v7, v5}, Lcom/zte/heartyservice/intercept/Common/GridInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    goto :goto_0

    .line 111
    .end local v2           #key:Ljava/lang/Integer;
    .end local v5           #mValue:Ljava/lang/String;
    :cond_0
    iget v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    rem-int/lit8 v6, v6, 0x3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 113
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->list:Ljava/util/List;

    new-instance v7, Lcom/zte/heartyservice/intercept/Common/GridInfo;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/zte/heartyservice/intercept/Common/GridInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    iget v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    rem-int/lit8 v6, v6, 0x3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 117
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->list:Ljava/util/List;

    new-instance v7, Lcom/zte/heartyservice/intercept/Common/GridInfo;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/zte/heartyservice/intercept/Common/GridInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->list:Ljava/util/List;

    new-instance v7, Lcom/zte/heartyservice/intercept/Common/GridInfo;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/zte/heartyservice/intercept/Common/GridInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    const v6, 0x7f0e019b

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->gridview:Landroid/widget/GridView;

    .line 123
    new-instance v6, Lcom/zte/heartyservice/intercept/Common/GridAdapter;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/intercept/Common/GridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->adapter:Lcom/zte/heartyservice/intercept/Common/GridAdapter;

    .line 124
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->adapter:Lcom/zte/heartyservice/intercept/Common/GridAdapter;

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->list:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->setList(Ljava/util/List;)V

    .line 125
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->gridview:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->adapter:Lcom/zte/heartyservice/intercept/Common/GridAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->gridview:Landroid/widget/GridView;

    new-instance v7, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;-><init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "phone_num"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;

    .line 188
    const v6, 0x7f0e0005

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTitle:Landroid/widget/TextView;

    .line 189
    const v6, 0x7f0e0192

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mShowPhoneNumber:Landroid/widget/TextView;

    .line 190
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v6, 0x7f0e00a3

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->closeButton:Landroid/widget/Button;

    .line 195
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->closeButton:Landroid/widget/Button;

    new-instance v7, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$2;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$2;-><init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v6, 0x7f0e019a

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 206
    .local v0, cb:Landroid/widget/CheckBox;
    new-instance v6, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$3;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$3;-><init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    const-string v0, "AddToBlackListAlertII"

    const-string v1, "start onDestroy~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 233
    const-string v0, "AddToBlackListAlertII"

    const-string v1, "start onPause~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    const-string v0, "AddToBlackListAlertII"

    const-string v1, "start onResume~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method
