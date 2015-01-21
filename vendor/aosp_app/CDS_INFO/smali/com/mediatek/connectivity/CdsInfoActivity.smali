.class public Lcom/mediatek/connectivity/CdsInfoActivity;
.super Landroid/app/Activity;
.source "CdsInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ITEM_INTENT_STRING:[Ljava/lang/String; = null

.field private static final ITEM_STRINGS:[Ljava/lang/String; = null

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.connectivity"

.field private static final TAG:Ljava/lang/String; = "CDS"


# instance fields
.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CDS Information"

    aput-object v1, v0, v3

    const-string v1, "Wi-Fi Information"

    aput-object v1, v0, v4

    const-string v1, "Radio Information"

    aput-object v1, v0, v5

    const-string v1, "Network Utility"

    aput-object v1, v0, v6

    const-string v1, "Background Data Usage"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Multiple APN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Connectivity Testing"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MTU Configuration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Socket Inforomation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PS data control"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_STRINGS:[Ljava/lang/String;

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CdsCommonInfoTabActivity"

    aput-object v1, v0, v3

    const-string v1, "CdsWifiInfoActivity"

    aput-object v1, v0, v4

    const-string v1, "CdsRadioMenuActivity"

    aput-object v1, v0, v5

    const-string v1, "CdsUtilityActivity"

    aput-object v1, v0, v6

    const-string v1, "CdsDuHelperActivity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CdsPdpActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CdsConnectivityActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CdsMtuSettingActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CdsSocketActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CdsPsControlActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_INTENT_STRING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 118
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    sget-object v2, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_1
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mMenuListView:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mMenuListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "CDS"

    const-string v1, "Resource could not be allocated"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    const-string v0, "CDS"

    const-string v1, "onCreate in dsActivity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "menuId"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 96
    .local v1, i:I
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 99
    sget-object v3, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mListData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.mediatek.connectivity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_INTENT_STRING:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v3, "CDS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start activity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/connectivity/CdsInfoActivity;->ITEM_INTENT_STRING:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 98
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsInfoActivity;->getData()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mListData:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mListData:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 89
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsInfoActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    return-void
.end method
