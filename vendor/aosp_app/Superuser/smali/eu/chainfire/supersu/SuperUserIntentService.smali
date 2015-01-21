.class public Leu/chainfire/supersu/SuperUserIntentService;
.super Landroid/app/IntentService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    const-string v0, "SuperUserIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static 鷭(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Leu/chainfire/supersu/SuperUserIntentService;->鷭(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public static 鷭(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 0
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Leu/chainfire/supersu/SuperUserIntentService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 29
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .line 0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 62
    :cond_1
    const-string v0, "boot_complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 63
    move-object p1, p0

    const/4 v3, 0x0

    invoke-virtual {p1}, Leu/chainfire/supersu/SuperUserIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {p1}, Leu/chainfire/supersu/SuperUserIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    move v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "last_boot_version"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Leu/chainfire/supersu/Installer;

    invoke-direct {v6}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {v6, p1}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    move-object v7, v6

    iget v0, v6, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    iget v0, v7, Leu/chainfire/supersu/Installer;->ˮ͈:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    iget v0, v7, Leu/chainfire/supersu/Installer;->Ą:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_9

    const-string v0, "survival"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v7, v6

    iget-boolean v0, v6, Leu/chainfire/supersu/Installer;->ą:Z

    if-nez v0, :cond_4

    iget-boolean v0, v7, Leu/chainfire/supersu/Installer;->ć:Z

    if-nez v0, :cond_4

    iget-boolean v0, v7, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v6, p1}, Leu/chainfire/supersu/Installer;->櫯(Landroid/content/Context;)Z

    invoke-virtual {p1}, Leu/chainfire/supersu/SuperUserIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, p1

    if-eqz p1, :cond_5

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    instance-of v0, v7, Leu/chainfire/supersu/Application;

    if-eqz v0, :cond_5

    move-object v9, v7

    move-object v10, v8

    sget-object v0, Leu/chainfire/supersu/Application;->鷭:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/supersu/SuperUserIntentService$1;

    invoke-direct {v1, v9, v10}, Leu/chainfire/supersu/SuperUserIntentService$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    goto :goto_3

    :cond_6
    move-object v7, v6

    iget-boolean v0, v6, Leu/chainfire/supersu/Installer;->ą:Z

    if-nez v0, :cond_7

    iget-boolean v0, v7, Leu/chainfire/supersu/Installer;->ć:Z

    if-nez v0, :cond_7

    iget-boolean v0, v7, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_9

    iget v0, v6, Leu/chainfire/supersu/Installer;->櫯:I

    if-gtz v0, :cond_8

    iget v0, v6, Leu/chainfire/supersu/Installer;->ˮ͈:I

    if-lez v0, :cond_9

    :cond_8
    invoke-virtual {v6, p1}, Leu/chainfire/supersu/Installer;->櫯(Landroid/content/Context;)Z

    :cond_9
    :goto_3
    if-le v3, v5, :cond_b

    const-string v0, "survival"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v6, p1, v0}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;Z)Z

    :cond_b
    if-lez v3, :cond_c

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_boot_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_c
    move-object v7, v6

    const/4 v0, 0x6

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "/system/xbin/su_old"

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const-string v0, "/system/bin/su_old"

    const/4 v1, 0x1

    aput-object v0, v8, v1

    const-string v0, "/system/bin/.ext/.su_old"

    const/4 v1, 0x2

    aput-object v0, v8, v1

    const-string v0, "/system/xbin/daemonsu_old"

    const/4 v1, 0x3

    aput-object v0, v8, v1

    const-string v0, "/system/xbin/daemonsu_old2"

    const/4 v1, 0x4

    aput-object v0, v8, v1

    const-string v0, "/system/xbin/.tmpsu_old"

    const/4 v1, 0x5

    aput-object v0, v8, v1

    const/4 v9, 0x0

    move-object v5, v8

    array-length v4, v8

    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    aget-object v10, v5, v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :goto_5
    if-lt v3, v4, :cond_d

    :goto_6
    if-eqz v9, :cond_10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v10}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    move-object v6, v8

    array-length v5, v8

    const/4 v4, 0x0

    goto :goto_7

    :cond_f
    aget-object v3, v6, v4

    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :goto_7
    if-lt v4, v5, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v10}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    invoke-static {v10}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_10
    new-instance v0, Leu/chainfire/supersu/Logs;

    invoke-direct {v0, p1}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->ȃ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "invisible"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_11
    return-void

    :cond_12
    const-string v0, "package_removed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 66
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object p1, p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reauthenticate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v4, Leu/chainfire/supersu/Settings;

    invoke-direct {v4, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    invoke-virtual {v4, p1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 69
    :cond_13
    return-void
.end method
