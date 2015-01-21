.class public final Ltmsdkobf/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static kJ:Ltmsdkobf/ei;


# instance fields
.field private jT:Z

.field private kK:Ltmsdkobf/ek;

.field private kL:Ltmsdkobf/fm;

.field private kM:Ljava/lang/Runnable;

.field private kN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/eh;",
            ">;"
        }
    .end annotation
.end field

.field private kO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdkobf/fn;",
            ">;"
        }
    .end annotation
.end field

.field private kP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/el;",
            ">;"
        }
    .end annotation
.end field

.field private kh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/ei;->kJ:Ltmsdkobf/ei;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Ltmsdkobf/ei;->kK:Ltmsdkobf/ek;

    .line 23
    iput-boolean v2, p0, Ltmsdkobf/ei;->jT:Z

    .line 25
    iput v2, p0, Ltmsdkobf/ei;->kh:I

    .line 27
    iput-object v0, p0, Ltmsdkobf/ei;->kL:Ltmsdkobf/fm;

    .line 29
    iput-object v0, p0, Ltmsdkobf/ei;->kM:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/ei;->kN:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/ei;->kO:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/ei;->kP:Ljava/util/List;

    .line 69
    new-instance v0, Ltmsdkobf/ek;

    invoke-direct {v0}, Ltmsdkobf/ek;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ei;->kK:Ltmsdkobf/ek;

    .line 72
    new-instance v0, Ltmsdkobf/eg;

    invoke-direct {v0, p1}, Ltmsdkobf/eg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdkobf/ei;->kL:Ltmsdkobf/fm;

    .line 73
    new-instance v0, Ltmsdkobf/ej;

    invoke-direct {v0, p1}, Ltmsdkobf/ej;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdkobf/ei;->kM:Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/ei;->kM:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public static declared-synchronized ar()Ltmsdkobf/fn;
    .locals 2

    .prologue
    .line 57
    const-class v1, Ltmsdkobf/ei;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/ei;->kJ:Ltmsdkobf/ei;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Ltmsdkobf/ei;->kJ:Ltmsdkobf/ei;

    invoke-direct {v0}, Ltmsdkobf/ei;->at()Ltmsdkobf/fn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized at()Ltmsdkobf/fn;
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ei;->kO:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/ei;->kO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Ltmsdkobf/ei;->kO:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/fn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aw()[Ltmsdkobf/el;
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ei;->kP:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/ei;->kP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Ltmsdkobf/ei;->kP:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ltmsdkobf/el;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltmsdkobf/el;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ltmsdkobf/ei;
    .locals 2
    .parameter

    .prologue
    .line 37
    const-class v1, Ltmsdkobf/ei;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/ei;->kJ:Ltmsdkobf/ei;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 40
    new-instance v0, Ltmsdkobf/ei;

    invoke-direct {v0, p0}, Ltmsdkobf/ei;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdkobf/ei;->kJ:Ltmsdkobf/ei;

    .line 42
    :cond_0
    sget-object v0, Ltmsdkobf/ei;->kJ:Ltmsdkobf/ei;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ltmsdkobf/ek;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0}, Ltmsdkobf/ei;->aw()[Ltmsdkobf/el;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_0

    .line 317
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 321
    :try_start_0
    invoke-interface {v4, p1}, Ltmsdkobf/el;->a(Ltmsdkobf/ek;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v4

    .line 325
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 326
    const-string v5, "rqdp{  com strategy changed error }%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 330
    :cond_0
    return-void
.end method

.method public final declared-synchronized as()Ltmsdkobf/ek;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ei;->kK:Ltmsdkobf/ek;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized au()Ltmsdkobf/fm;
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ei;->kL:Ltmsdkobf/fm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized av(I)V
    .locals 4
    .parameter

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ei;->kh:I

    .line 222
    const-string v0, "rqdp{  step }%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->f(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized av()[Ltmsdkobf/eh;
    .locals 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ei;->kN:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/ei;->kN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Ltmsdkobf/ei;->kN:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ltmsdkobf/eh;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltmsdkobf/eh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ax()I
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ei;->kh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c(Z)V
    .locals 4
    .parameter

    .prologue
    .line 171
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltmsdkobf/ei;->jT:Z

    .line 172
    const-string v0, "rqdp{  isFirst }%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->f(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
