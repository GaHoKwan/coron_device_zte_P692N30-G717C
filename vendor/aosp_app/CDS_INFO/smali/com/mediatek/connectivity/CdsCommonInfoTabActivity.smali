.class public Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;
.super Landroid/app/TabActivity;
.source "CdsCommonInfoTabActivity.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.connectivity"

.field private static final TAB_INTENT_CLASS_NAMES:[Ljava/lang/String;

.field private static final TAB_STRINGS:[Ljava/lang/String;


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Framework Service"

    aput-object v1, v0, v2

    const-string v1, "Native Network"

    aput-object v1, v0, v3

    const-string v1, "Tethering"

    aput-object v1, v0, v4

    const-string v1, "Traffic"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->TAB_STRINGS:[Ljava/lang/String;

    .line 51
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "CdsFrameworkSrvActivity"

    aput-object v1, v0, v2

    const-string v1, "CdsNatvieNetworkSrvActivity"

    aput-object v1, v0, v3

    const-string v1, "CdsTetherSrvActivity"

    aput-object v1, v0, v4

    const-string v1, "CdsTrafficStatActivity"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->TAB_INTENT_CLASS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->TAB_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->TAB_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget-object v3, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->TAB_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.mediatek.connectivity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->TAB_INTENT_CLASS_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsCommonInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 65
    return-void
.end method
