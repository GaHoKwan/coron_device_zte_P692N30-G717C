.class public Lcom/zte/heartyservice/setting/SettingsHost;
.super Landroid/app/TabActivity;
.source "SettingsHost.java"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private showInstruction()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSoftwareSettings()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0a054c

    const v6, 0x7f0a00b1

    const v5, 0x7f0a00a2

    .line 22
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/SettingsHost;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 24
    const v0, 0x7f0300f8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/SettingsHost;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/SettingsHost;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/SettingsHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v6, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/setting/SettingsHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 42
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/SettingsHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/setting/SettingsHost;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/setting/InstructionActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v7, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    :cond_0
    return-void
.end method
