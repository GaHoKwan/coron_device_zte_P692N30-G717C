.class public Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;
.super Landroid/app/TabActivity;
.source "ZTEInterceptActivity.java"


# static fields
.field public static final Intercepted_Msg:Ljava/lang/String; = "intercepted_msg"

.field public static final Intercepted_Phone:Ljava/lang/String; = "intercepted_phone"


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
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->requestWindowFeature(I)Z

    .line 24
    const v2, 0x7f0300f8

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    .line 29
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    const-string v4, "TS_Calls"

    const v5, 0x7f0a0395

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 35
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    const-string v4, "TS_SMS"

    const v5, 0x7f0a0396

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 41
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    const-string v4, "TS_SETTING"

    const v5, 0x7f0a001e

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 47
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 48
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "target"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, extra:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "intercepted_phone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "intercepted_msg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 54
    :cond_2
    if-eqz v0, :cond_0

    const-string v2, "intercepted_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method
