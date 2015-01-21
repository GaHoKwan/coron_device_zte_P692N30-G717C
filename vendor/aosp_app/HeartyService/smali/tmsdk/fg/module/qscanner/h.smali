.class final Ltmsdk/fg/module/qscanner/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/fg/module/qscanner/h$b;,
        Ltmsdk/fg/module/qscanner/h$a;,
        Ltmsdk/fg/module/qscanner/h$c;
    }
.end annotation


# static fields
.field private static Fs:Ltmsdk/fg/module/qscanner/h;


# instance fields
.field private Ft:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdk/fg/module/qscanner/a;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    .line 34
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/h;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Ltmsdk/fg/module/qscanner/h;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/h;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hG()V
    .locals 6

    .prologue
    .line 50
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/h;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->v(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->hJ()Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, systemFlaws:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bl;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/bl;

    .line 52
    .local v1, info:Ltmsdkobf/bl;
    iget v3, v1, Ltmsdkobf/bl;->id:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    const v4, 0x1d4c1

    new-instance v5, Ltmsdk/fg/module/qscanner/h$c;

    invoke-direct {v5, v1}, Ltmsdk/fg/module/qscanner/h$c;-><init>(Ltmsdkobf/bl;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    const v4, 0x1d4c2

    new-instance v5, Ltmsdk/fg/module/qscanner/h$a;

    invoke-direct {v5, v1}, Ltmsdk/fg/module/qscanner/h$a;-><init>(Ltmsdkobf/bl;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    const v4, 0x1d4c3

    new-instance v5, Ltmsdk/fg/module/qscanner/h$b;

    invoke-direct {v5, v1}, Ltmsdk/fg/module/qscanner/h$b;-><init>(Ltmsdkobf/bl;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v1           #info:Ltmsdkobf/bl;
    :cond_0
    return-void

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1d4c1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic hH()Ltmsdk/fg/module/qscanner/h;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ltmsdk/fg/module/qscanner/h;->Fs:Ltmsdk/fg/module/qscanner/h;

    return-object v0
.end method

.method static u(Landroid/content/Context;)Ltmsdk/fg/module/qscanner/h;
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Ltmsdk/fg/module/qscanner/h;->Fs:Ltmsdk/fg/module/qscanner/h;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Ltmsdk/fg/module/qscanner/h;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Ltmsdk/fg/module/qscanner/h;->Fs:Ltmsdk/fg/module/qscanner/h;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ltmsdk/fg/module/qscanner/h;

    invoke-direct {v0, p0}, Ltmsdk/fg/module/qscanner/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/fg/module/qscanner/h;->Fs:Ltmsdk/fg/module/qscanner/h;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Ltmsdk/fg/module/qscanner/h;->Fs:Ltmsdk/fg/module/qscanner/h;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/h;->hG()V

    .line 46
    sget-object v0, Ltmsdk/fg/module/qscanner/h;->Fs:Ltmsdk/fg/module/qscanner/h;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method b(Ltmsdk/fg/module/qscanner/QScanListenerV2;Ltmsdk/fg/module/qscanner/b;)Ljava/util/ArrayList;
    .locals 6
    .parameter "scanListener"
    .parameter "stateCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            "Ltmsdk/fg/module/qscanner/b;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    iget-object v4, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 96
    :cond_0
    return-object v2

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 81
    .local v1, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    iget-object v4, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 82
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ltmsdk/fg/module/qscanner/b;->eU()Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    :cond_2
    iget-object v4, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/fg/module/qscanner/a;

    invoke-interface {v4}, Ltmsdk/fg/module/qscanner/a;->hw()Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    if-eqz p1, :cond_3

    .line 90
    const/4 v4, 0x3

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v3

    invoke-virtual {p1, v4, v5, v1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanProgress(IILtmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 82
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method handleSystemFlaw(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 4
    .parameter "entity"

    .prologue
    const/4 v1, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/h;->Ft:Landroid/util/SparseArray;

    iget v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/fg/module/qscanner/a;

    .line 109
    .local v0, scanner:Ltmsdk/fg/module/qscanner/a;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1}, Ltmsdk/fg/module/qscanner/a;->b(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z

    move-result v1

    goto :goto_0
.end method
