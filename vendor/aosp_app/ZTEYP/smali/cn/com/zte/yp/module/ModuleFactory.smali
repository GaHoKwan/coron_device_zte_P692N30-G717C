.class public Lcn/com/zte/yp/module/ModuleFactory;
.super Ljava/lang/Object;
.source "ModuleFactory.java"


# static fields
.field private static instance:Lcn/com/zte/yp/module/ModuleFactory;


# instance fields
.field private context:Landroid/content/Context;

.field private module:Lcn/com/zte/yp/YpModule;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcn/com/zte/yp/module/ModuleFactory;->initModule()Lcn/com/zte/yp/YpModule;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/module/ModuleFactory;->module:Lcn/com/zte/yp/YpModule;

    .line 29
    return-void
.end method

.method private checkPackageInstalled(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 120
    :try_start_0
    iget-object v3, p0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 128
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private crateTouchPalModule()Lcn/com/zte/yp/YpModule;
    .locals 2

    .prologue
    .line 103
    const-string v0, "com.cootek.smartdialer_oem_module"

    invoke-direct {p0, v0}, Lcn/com/zte/yp/module/ModuleFactory;->checkPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;

    iget-object v1, p0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/zte/yp/module/touchpal/TouchPalModule;-><init>(Landroid/content/Context;)V

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v0, "com.cootek.smartdialer_oem_module do not installed. the YP module is disabled"

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createZDModule()Lcn/com/zte/yp/YpModule;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcn/com/zte/yp/module/zd/ZdModule;

    iget-object v1, p0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/zte/yp/module/zd/ZdModule;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const-class v1, Lcn/com/zte/yp/module/ModuleFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/zte/yp/module/ModuleFactory;->instance:Lcn/com/zte/yp/module/ModuleFactory;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcn/com/zte/yp/module/ModuleFactory;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/module/ModuleFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/zte/yp/module/ModuleFactory;->instance:Lcn/com/zte/yp/module/ModuleFactory;

    .line 35
    :cond_0
    sget-object v0, Lcn/com/zte/yp/module/ModuleFactory;->instance:Lcn/com/zte/yp/module/ModuleFactory;

    iput-object p0, v0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    .line 36
    sget-object v0, Lcn/com/zte/yp/module/ModuleFactory;->instance:Lcn/com/zte/yp/module/ModuleFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initModule()Lcn/com/zte/yp/YpModule;
    .locals 5

    .prologue
    .line 73
    iget-object v3, p0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/com/zte/yp/config/PreConfig;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/config/PreConfig;

    move-result-object v2

    .line 74
    .local v2, preConfig:Lcn/com/zte/yp/config/PreConfig;
    invoke-virtual {v2}, Lcn/com/zte/yp/config/PreConfig;->init()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v2}, Lcn/com/zte/yp/config/PreConfig;->getModuleType()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, moduleType:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moduleType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    const-string v3, "TouchPal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-direct {p0}, Lcn/com/zte/yp/module/ModuleFactory;->crateTouchPalModule()Lcn/com/zte/yp/YpModule;

    move-result-object v3

    .line 94
    .end local v1           #moduleType:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 81
    .restart local v1       #moduleType:Ljava/lang/String;
    :cond_0
    const-string v3, "ZD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-direct {p0}, Lcn/com/zte/yp/module/ModuleFactory;->createZDModule()Lcn/com/zte/yp/YpModule;

    move-result-object v3

    goto :goto_0

    .line 87
    .end local v1           #moduleType:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/com/zte/yp/module/ModuleFactory;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/com/zte/yp/config/YpConfig;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/config/YpConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/zte/yp/config/YpConfig;->getModule()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, moduleName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ModuleName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 89
    const-string v3, "TouchPal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-direct {p0}, Lcn/com/zte/yp/module/ModuleFactory;->crateTouchPalModule()Lcn/com/zte/yp/YpModule;

    move-result-object v3

    goto :goto_0

    .line 91
    :cond_2
    const-string v3, "ZD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-direct {p0}, Lcn/com/zte/yp/module/ModuleFactory;->createZDModule()Lcn/com/zte/yp/YpModule;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getYpModuleInstance()Lcn/com/zte/yp/YpModule;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/module/ModuleFactory;->module:Lcn/com/zte/yp/YpModule;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcn/com/zte/yp/module/ModuleFactory;->module:Lcn/com/zte/yp/YpModule;

    if-nez v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 60
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 58
    .end local v0           #enabled:Z
    :cond_0
    iget-object v1, p0, Lcn/com/zte/yp/module/ModuleFactory;->module:Lcn/com/zte/yp/YpModule;

    invoke-virtual {v1}, Lcn/com/zte/yp/YpModule;->isEnabled()Z

    move-result v0

    .restart local v0       #enabled:Z
    goto :goto_0
.end method
