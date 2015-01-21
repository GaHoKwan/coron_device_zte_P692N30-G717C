.class public Lcn/com/zte/yp/activityZD/YpLaunchView;
.super Landroid/app/Activity;
.source "YpLaunchView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    move-object v1, p0

    .line 29
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcn/com/zte/yp/statics/StaticsInfo;->collectStatiscs(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YpLaunchView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 31
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 32
    .local v2, extras:Landroid/os/Bundle;
    const-string v7, "LaunchType"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YpLaunchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcn/com/zte/yp/module/ModuleFactory;->getYpModuleInstance()Lcn/com/zte/yp/YpModule;

    move-result-object v4

    .line 34
    .local v4, module:Lcn/com/zte/yp/YpModule;
    if-nez v4, :cond_0

    .line 35
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YpLaunchView;->finish()V

    .line 57
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {v4, p0}, Lcn/com/zte/yp/YpModule;->setActivity(Landroid/app/Activity;)V

    .line 39
    const-string v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    invoke-virtual {v4}, Lcn/com/zte/yp/YpModule;->launchSettingsUI()V

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YpLaunchView;->finish()V

    goto :goto_0

    .line 42
    :cond_2
    const-string v7, "Search"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 44
    invoke-virtual {v4}, Lcn/com/zte/yp/YpModule;->launchSearchUI()V

    goto :goto_1

    .line 45
    :cond_3
    const-string v7, "Download"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 47
    invoke-virtual {v4}, Lcn/com/zte/yp/YpModule;->launchOfflineDataDownloadUI()V

    goto :goto_1

    .line 48
    :cond_4
    const-string v7, "WebView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YpLaunchView;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "number"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YpLaunchView;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "callType"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, callType:I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    invoke-virtual {v4, p0, v5, v0}, Lcn/com/zte/yp/YpModule;->launchWebView(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1
.end method
