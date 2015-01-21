.class public Lcn/com/zte/yp/config/YpConfig;
.super Ljava/lang/Object;
.source "YpConfig.java"


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "config.properties"

.field private static final DEFAULT_PROPERTY_PATH:Ljava/lang/String; = "/data/data/cn.com.zte.yp/files/"

.field private static final PRO_MODULE:Ljava/lang/String; = "Module"

.field private static final PRO_PRINT_LOG:Ljava/lang/String; = "LogSwtich"

.field private static final PRO_YP_SWITCH:Ljava/lang/String; = "YpSwitch"

.field private static instance:Lcn/com/zte/yp/config/YpConfig;


# instance fields
.field private context:Landroid/content/Context;

.field private cp:Lcn/com/zte/yp/config/ConfigHelper;

.field private logSwitch:Z

.field private module:Ljava/lang/String;

.field private ypSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcn/com/zte/yp/config/YpConfig;->instance:Lcn/com/zte/yp/config/YpConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/com/zte/yp/config/YpConfig;->context:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcn/com/zte/yp/config/YpConfig;->initFromProperty()V

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/zte/yp/config/YpConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcn/com/zte/yp/config/YpConfig;->instance:Lcn/com/zte/yp/config/YpConfig;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/com/zte/yp/config/YpConfig;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/config/YpConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/zte/yp/config/YpConfig;->instance:Lcn/com/zte/yp/config/YpConfig;

    .line 33
    :cond_0
    sget-object v0, Lcn/com/zte/yp/config/YpConfig;->instance:Lcn/com/zte/yp/config/YpConfig;

    invoke-direct {v0}, Lcn/com/zte/yp/config/YpConfig;->initFromProperty()V

    .line 34
    sget-object v0, Lcn/com/zte/yp/config/YpConfig;->instance:Lcn/com/zte/yp/config/YpConfig;

    return-object v0
.end method

.method private initFromProperty()V
    .locals 4

    .prologue
    .line 46
    const-string v0, "initFromProperty"

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcn/com/zte/yp/config/ConfigHelper;

    iget-object v1, p0, Lcn/com/zte/yp/config/YpConfig;->context:Landroid/content/Context;

    const-string v2, "/data/data/cn.com.zte.yp/files/"

    const-string v3, "config.properties"

    invoke-direct {v0, v1, v2, v3}, Lcn/com/zte/yp/config/ConfigHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    invoke-virtual {v0}, Lcn/com/zte/yp/config/ConfigHelper;->initAppConfigProperties()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    const-string v1, "Module"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->module:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    const-string v1, "LogSwtich"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/zte/yp/config/YpConfig;->logSwitch:Z

    .line 54
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    const-string v1, "YpSwitch"

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/zte/yp/config/YpConfig;->ypSwitch:Z

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getYpSwitch()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcn/com/zte/yp/config/YpConfig;->ypSwitch:Z

    return v0
.end method

.method public isLogSwitch()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/com/zte/yp/config/YpConfig;->logSwitch:Z

    return v0
.end method

.method public reloadConfigProperties()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcn/com/zte/yp/config/YpConfig;->instance:Lcn/com/zte/yp/config/YpConfig;

    invoke-direct {v0}, Lcn/com/zte/yp/config/YpConfig;->initFromProperty()V

    .line 43
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 71
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/com/zte/yp/config/ConfigHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 63
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Lcn/com/zte/yp/config/ConfigHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcn/com/zte/yp/config/YpConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 59
    iget-object v0, p0, Lcn/com/zte/yp/config/YpConfig;->cp:Lcn/com/zte/yp/config/ConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcn/com/zte/yp/config/ConfigHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    return-void
.end method

.method public setYpSwitch(Z)V
    .locals 2
    .parameter "ypSwitch"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcn/com/zte/yp/config/YpConfig;->ypSwitch:Z

    .line 88
    const-string v0, "YpSwitch"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/com/zte/yp/config/YpConfig;->setProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    return-void
.end method
