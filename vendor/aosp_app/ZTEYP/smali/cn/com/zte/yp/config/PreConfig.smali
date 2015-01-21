.class public Lcn/com/zte/yp/config/PreConfig;
.super Ljava/lang/Object;
.source "PreConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/config/PreConfig$Config;
    }
.end annotation


# static fields
.field private static final CONFIG_PATH:Ljava/lang/String; = "/system/lib/libnumberlocator.so"

.field private static instance:Lcn/com/zte/yp/config/PreConfig;


# instance fields
.field private config:Lcn/com/zte/yp/config/PreConfig$Config;

.field private context:Landroid/content/Context;

.field private defaultIpNumber1:Ljava/lang/String;

.field private defaultIpNumber2:Ljava/lang/String;

.field private defaultIpNumber3:Ljava/lang/String;

.field private defaultIpNumber4:Ljava/lang/String;

.field private defaultIpNumber5:Ljava/lang/String;

.field private moduleType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/com/zte/yp/config/PreConfig;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/com/zte/yp/config/PreConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const-class v1, Lcn/com/zte/yp/config/PreConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/zte/yp/config/PreConfig;->instance:Lcn/com/zte/yp/config/PreConfig;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/com/zte/yp/config/PreConfig;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/config/PreConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/zte/yp/config/PreConfig;->instance:Lcn/com/zte/yp/config/PreConfig;

    .line 39
    :cond_0
    sget-object v0, Lcn/com/zte/yp/config/PreConfig;->instance:Lcn/com/zte/yp/config/PreConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkConfigFiles(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDefaultIpNumber1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber1:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIpNumber2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber2:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIpNumber3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber3:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIpNumber4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber4:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIpNumber5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber5:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->moduleType:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 3

    .prologue
    .line 43
    const-string v0, "/system/lib/libnumberlocator.so"

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/config/PreConfig;->checkConfigFiles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 46
    :cond_0
    new-instance v0, Lcn/com/zte/yp/config/PreConfig$Config;

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->context:Landroid/content/Context;

    const-string v2, "/system/lib/libnumberlocator.so"

    invoke-direct {v0, p0, v1, v2}, Lcn/com/zte/yp/config/PreConfig$Config;-><init>(Lcn/com/zte/yp/config/PreConfig;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    .line 47
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    const-string v1, "Module"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->moduleType:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    const-string v1, "IpNumber1"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber1:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    const-string v1, "IpNumber2"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber2:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    const-string v1, "IpNumber3"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber3:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    const-string v1, "IpNumber4"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber4:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->config:Lcn/com/zte/yp/config/PreConfig$Config;

    const-string v1, "IpNumber5"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber5:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moduleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->moduleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultIpNumber1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultIpNumber2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultIpNumber3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultIpNumber4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultIpNumber5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig;->defaultIpNumber5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
