.class public Ltmsdk/fg/module/qscanner/SystemScanConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Fu:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;


# instance fields
.field private Fv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bl;",
            ">;"
        }
    .end annotation
.end field

.field private Fw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bl;",
            ">;"
        }
    .end annotation
.end field

.field private Fx:Ltmsdkobf/bm;

.field private mContext:Landroid/content/Context;

.field private su:Ltmsdk/common/module/update/IUpdateObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fv:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fw:Ljava/util/List;

    .line 24
    new-instance v0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager$1;

    invoke-direct {v0, p0}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager$1;-><init>(Ltmsdk/fg/module/qscanner/SystemScanConfigManager;)V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->su:Ltmsdk/common/module/update/IUpdateObserver;

    .line 40
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->mContext:Landroid/content/Context;

    .line 41
    const-class v0, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    const-wide v1, 0x80000000L

    iget-object v3, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->su:Ltmsdk/common/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/module/update/UpdateManager;->addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V

    .line 42
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->hL()V

    .line 43
    return-void
.end method

.method static synthetic a(Ltmsdk/fg/module/qscanner/SystemScanConfigManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->hL()V

    return-void
.end method

.method private hL()V
    .locals 7

    .prologue
    .line 66
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Ltmsdk/common/module/update/UpdateConfig;->SYSTEM_SCAN_CONFIG_NAME:Ljava/lang/String;

    sget-object v4, Ltmsdkobf/bk;->fs:Ltmsdkobf/bk;

    invoke-virtual {v4}, Ltmsdkobf/bk;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ltmsdkobf/bm;

    invoke-direct {v5}, Ltmsdkobf/bm;-><init>()V

    const-string v6, "UTF-8"

    invoke-static {v2, v3, v4, v5, v6}, Ltmsdkobf/kk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/bm;

    iput-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fx:Ltmsdkobf/bm;

    .line 68
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fx:Ltmsdkobf/bm;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fx:Ltmsdkobf/bm;

    iget-object v2, v2, Ltmsdkobf/bm;->fv:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fx:Ltmsdkobf/bm;

    iget-object v2, v2, Ltmsdkobf/bm;->fv:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/bl;

    .line 71
    .local v1, info:Ltmsdkobf/bl;
    iget v2, v1, Ltmsdkobf/bl;->fu:I

    if-eqz v2, :cond_0

    .line 74
    iget v2, v1, Ltmsdkobf/bl;->type:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 75
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fv:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    iget v2, v1, Ltmsdkobf/bl;->type:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 77
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Ltmsdkobf/bl;
    :cond_2
    return-void
.end method

.method static v(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/SystemScanConfigManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    sget-object v0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fu:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fu:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    invoke-direct {v0, p0}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fu:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fu:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method hJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fv:Ljava/util/List;

    return-object v0
.end method

.method hK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->Fw:Ljava/util/List;

    return-object v0
.end method
