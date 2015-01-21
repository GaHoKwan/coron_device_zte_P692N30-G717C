.class public final Ltmsdkobf/gy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gy$a;
    }
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private oE:[I

.field private oF:[Ltmsdkobf/gy$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gy;->mLock:Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private varargs a(IILtmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterConfig;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 4
    .parameter "filedindex"
    .parameter "state"
    .parameter "data"
    .parameter "config"
    .parameter "datas"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, result:Ltmsdk/common/module/aresengine/FilterResult;
    iget-object v2, p0, Ltmsdkobf/gy;->oF:[Ltmsdkobf/gy$a;

    aget-object v0, v2, p1

    .line 96
    .local v0, action:Ltmsdkobf/gy$a;
    if-eqz v0, :cond_1

    .line 98
    iget-object v3, p0, Ltmsdkobf/gy;->oF:[Ltmsdkobf/gy$a;

    monitor-enter v3

    .line 99
    :try_start_0
    invoke-static {v0, p3}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/TelephonyEntity;)Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 100
    invoke-static {v0, p2}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;I)I

    .line 101
    invoke-static {v0, p5}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Ltmsdkobf/gy;->oE:[I

    aget v2, v2, p1

    invoke-static {v0, v2}, Ltmsdkobf/gy$a;->b(Ltmsdkobf/gy$a;I)I

    .line 104
    invoke-virtual {v0}, Ltmsdkobf/gy$a;->bY()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v0}, Ltmsdkobf/gy$a;->bZ()V

    .line 108
    :cond_0
    invoke-static {v0}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v1

    .line 110
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/TelephonyEntity;)Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltmsdkobf/gy$a;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 113
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ltmsdkobf/gy$a;->a(Ltmsdkobf/gy$a;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    monitor-exit v3

    .line 118
    :cond_1
    return-object v1

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private aQ(I)I
    .locals 3
    .parameter "filed"

    .prologue
    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, filedindex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Ltmsdkobf/gy;->oE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Ltmsdkobf/gy;->oE:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 85
    move v0, v1

    .line 89
    :cond_0
    return v0

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterConfig;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 9
    .parameter "data"
    .parameter "config"
    .parameter "datas"

    .prologue
    .line 51
    const/4 v7, 0x0

    .line 53
    .local v7, result:Ltmsdk/common/module/aresengine/FilterResult;
    iget-object v0, p0, Ltmsdkobf/gy;->oE:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltmsdkobf/gy;->oF:[Ltmsdkobf/gy$a;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 55
    iget-object v8, p0, Ltmsdkobf/gy;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/gy;->oE:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 58
    iget-object v0, p0, Ltmsdkobf/gy;->oE:[I

    aget v6, v0, v1

    .line 60
    .local v6, filed:I
    invoke-virtual {p2, v6}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    .line 61
    .local v2, state:I
    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 62
    invoke-direct/range {v0 .. v5}, Ltmsdkobf/gy;->a(IILtmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterConfig;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v7

    .line 66
    :cond_0
    if-eqz v7, :cond_3

    .line 70
    .end local v2           #state:I
    .end local v6           #filed:I
    :cond_1
    monitor-exit v8

    .line 73
    .end local v1           #i:I
    :cond_2
    return-object v7

    .line 57
    .restart local v1       #i:I
    .restart local v2       #state:I
    .restart local v6       #filed:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v2           #state:I
    .end local v6           #filed:I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILtmsdkobf/gy$a;)V
    .locals 4
    .parameter "filed"
    .parameter "action"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ltmsdkobf/gy;->aQ(I)I

    move-result v0

    .line 40
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 41
    iget-object v1, p0, Ltmsdkobf/gy;->oF:[Ltmsdkobf/gy$a;

    aput-object p2, v1, v0

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the filed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not define from setOrderedFileds method."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs a([I)V
    .locals 1
    .parameter "fileds"

    .prologue
    .line 27
    iput-object p1, p0, Ltmsdkobf/gy;->oE:[I

    .line 28
    iget-object v0, p0, Ltmsdkobf/gy;->oE:[I

    array-length v0, v0

    new-array v0, v0, [Ltmsdkobf/gy$a;

    iput-object v0, p0, Ltmsdkobf/gy;->oF:[Ltmsdkobf/gy$a;

    .line 29
    return-void
.end method
