.class public final Ltmsdkobf/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ek$a;
    }
.end annotation


# instance fields
.field private jQ:Ljava/lang/String;

.field private kI:Ljava/lang/String;

.field private kR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdkobf/ek$a;",
            ">;"
        }
    .end annotation
.end field

.field private kS:Ljava/lang/String;

.field private kT:Ljava/lang/String;

.field private kU:Z

.field private kV:Z

.field private kg:I

.field private kh:I

.field private kk:I

.field private kl:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x15b3

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    .line 129
    const-string v0, "http://monitor.uu.qq.com/analytics/upload"

    iput-object v0, p0, Ltmsdkobf/ek;->jQ:Ljava/lang/String;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/ek;->kg:I

    .line 135
    const/4 v0, 0x6

    iput v0, p0, Ltmsdkobf/ek;->kh:I

    .line 137
    const-string v0, "*^@K#K@!"

    iput-object v0, p0, Ltmsdkobf/ek;->kS:Ljava/lang/String;

    .line 138
    const-string v0, "S(@L@L@)"

    iput-object v0, p0, Ltmsdkobf/ek;->kI:Ljava/lang/String;

    .line 139
    iput v2, p0, Ltmsdkobf/ek;->kk:I

    .line 140
    iput v2, p0, Ltmsdkobf/ek;->kl:I

    .line 141
    iput-object v1, p0, Ltmsdkobf/ek;->kT:Ljava/lang/String;

    .line 142
    iput-boolean v2, p0, Ltmsdkobf/ek;->kU:Z

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/ek;->kV:Z

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    new-instance v1, Ltmsdkobf/ek$a;

    invoke-direct {v1, v4}, Ltmsdkobf/ek$a;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    new-instance v1, Ltmsdkobf/ek$a;

    invoke-direct {v1, v3}, Ltmsdkobf/ek$a;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    new-instance v1, Ltmsdkobf/ek$a;

    invoke-direct {v1, v2}, Ltmsdkobf/ek$a;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Ltmsdkobf/ek$a;

    invoke-direct {v0, v5}, Ltmsdkobf/ek$a;-><init>(I)V

    const-string v1, "http://update.uu.qq.com/gray/access"

    invoke-virtual {v0, v1}, Ltmsdkobf/ek$a;->aw(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ltmsdkobf/ek$a;->e(Z)V

    iget-object v1, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    iput-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    .line 148
    return-void
.end method


# virtual methods
.method public final declared-synchronized O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ek;->jQ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Y()I
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ek;->kg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z()I
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ek;->kh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ek;->kT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aB(I)V
    .locals 1
    .parameter

    .prologue
    .line 223
    monitor-enter p0

    if-lez p1, :cond_0

    .line 225
    :try_start_0
    iput p1, p0, Ltmsdkobf/ek;->kh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aB()Z
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/ek;->kU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aC()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdkobf/ek$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ltmsdkobf/es;

    invoke-direct {v0}, Ltmsdkobf/es;-><init>()V

    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    invoke-static {v0}, Ltmsdkobf/es;->a(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 329
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aC(I)V
    .locals 1
    .parameter

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ek;->kk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aD(I)V
    .locals 1
    .parameter

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ek;->kl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aD()Z
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/ek;->kV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aE(I)Ltmsdkobf/ek$a;
    .locals 1
    .parameter

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Ltmsdkobf/ek;->kR:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ek$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ek;->kS:Ljava/lang/String;
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
    .locals 1
    .parameter

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ek;->kg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aw(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ek;->jQ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ax()I
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ek;->kk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ax(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ek;->kS:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ek;->kI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ay(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ek;->kI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized az()I
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ek;->kl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized az(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ek;->kT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltmsdkobf/ek;->kU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltmsdkobf/ek;->kV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
