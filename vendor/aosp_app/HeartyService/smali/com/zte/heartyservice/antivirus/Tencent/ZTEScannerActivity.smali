.class public Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;
.super Landroid/app/TabActivity;
.source "ZTEScannerActivity.java"


# instance fields
.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->finish()V

    .line 25
    :cond_0
    const-string v0, "porting"

    const-string v1, "Tencent - ZTEScannerActivity::onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->requestWindowFeature(I)Z

    .line 28
    const v0, 0x7f0300f8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "TS_ANTIVIRUS"

    const v3, 0x7f0a001c

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "TS_LOG"

    const v3, 0x7f0a001d

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScannerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "TS_SETTING"

    const v3, 0x7f0a001e

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 56
    return-void
.end method
