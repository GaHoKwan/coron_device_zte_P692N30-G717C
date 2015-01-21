.class public Lcom/zte/retrieve/utils/config/VersionConfig;
.super Ljava/lang/Object;
.source "VersionConfig.java"


# static fields
.field public static MIFAVOR_TYPE:Ljava/lang/String;

.field private static instance:Lcom/zte/retrieve/utils/config/VersionConfig;


# instance fields
.field private cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

.field public isMifavor2_2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "isMifavor2.2"

    sput-object v0, Lcom/zte/retrieve/utils/config/VersionConfig;->MIFAVOR_TYPE:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zte/retrieve/utils/config/VersionConfig;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/zte/retrieve/utils/config/VersionConfig;->instance:Lcom/zte/retrieve/utils/config/VersionConfig;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/zte/retrieve/utils/config/VersionConfig;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/VersionConfig;-><init>()V

    sput-object v0, Lcom/zte/retrieve/utils/config/VersionConfig;->instance:Lcom/zte/retrieve/utils/config/VersionConfig;

    .line 29
    :cond_0
    sget-object v0, Lcom/zte/retrieve/utils/config/VersionConfig;->instance:Lcom/zte/retrieve/utils/config/VersionConfig;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/VersionConfig;->initFromProperty()V

    .line 30
    sget-object v0, Lcom/zte/retrieve/utils/config/VersionConfig;->instance:Lcom/zte/retrieve/utils/config/VersionConfig;

    return-object v0
.end method

.method private initFromProperty()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/zte/retrieve/utils/config/ConfigHelper;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/ConfigHelper;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->setContext(Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->initAppConfigProperties(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    sget-object v1, Lcom/zte/retrieve/utils/config/VersionConfig;->MIFAVOR_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->isMifavor2_2:Z

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public isMifavor2_2()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/zte/retrieve/utils/config/VersionConfig;->isMifavor2_2:Z

    return v0
.end method
