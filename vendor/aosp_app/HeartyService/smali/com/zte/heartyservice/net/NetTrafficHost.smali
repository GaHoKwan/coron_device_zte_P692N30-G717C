.class public Lcom/zte/heartyservice/net/NetTrafficHost;
.super Landroid/app/TabActivity;
.source "NetTrafficHost.java"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0a00db

    const v6, 0x7f0a00da

    const v5, 0x7f0a00d9

    .line 24
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficHost;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 26
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficHost;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficHost;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/net/NetTrafficHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/net/NetTrafficHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v6, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 41
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/net/NetTrafficHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v7, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 54
    return-void
.end method
