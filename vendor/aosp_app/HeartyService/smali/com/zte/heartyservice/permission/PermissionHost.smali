.class public Lcom/zte/heartyservice/permission/PermissionHost;
.super Landroid/app/TabActivity;
.source "PermissionHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionHost"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/permission/PermissionHost;->requestWindowFeature(I)Z

    .line 28
    const v4, 0x7f0300af

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/permission/PermissionHost;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionHost;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    .line 34
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionHost;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 36
    .local v2, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    const-string v4, "notification_extra"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v3, pca_intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 41
    const-string v4, "notification_extra"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "app_control"

    const v7, 0x7f0a0278

    invoke-static {p0, v5, v6, v7, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 50
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "permission_control"

    const v7, 0x7f0a0279

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v6, v7, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 56
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "log"

    const v7, 0x7f0a027a

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v6, v7, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 62
    if-nez v2, :cond_4

    .line 63
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getLastControlMode()I

    move-result v1

    .line 65
    .local v1, lastMode:I
    if-nez v1, :cond_3

    .line 66
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 74
    .end local v1           #lastMode:I
    :cond_2
    :goto_0
    return-void

    .line 67
    .restart local v1       #lastMode:I
    :cond_3
    if-ne v1, v10, :cond_2

    .line 68
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v10}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 71
    .end local v1           #lastMode:I
    :cond_4
    const-string v4, "PermissionHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification tag package name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method
