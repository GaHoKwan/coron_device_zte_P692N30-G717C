.class public Ltmsdkobf/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private jO:I

.field private kT:Ljava/lang/String;

.field private kU:Z

.field private kX:Z

.field private kb:I

.field private kg:I

.field private kh:I

.field private kl:I

.field private ky:I

.field private lk:Z

.field private lp:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v2, p0, Ltmsdkobf/ev;->jO:I

    .line 9
    iput v2, p0, Ltmsdkobf/ev;->kb:I

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Ltmsdkobf/ev;->kg:I

    .line 11
    iput v2, p0, Ltmsdkobf/ev;->kh:I

    .line 12
    iput-boolean v1, p0, Ltmsdkobf/ev;->kX:Z

    .line 13
    iput-boolean v1, p0, Ltmsdkobf/ev;->lk:Z

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/ev;->lp:Z

    .line 15
    const/16 v0, 0x64

    iput v0, p0, Ltmsdkobf/ev;->kl:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/ev;->kT:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Ltmsdkobf/ev;->kU:Z

    .line 18
    const/16 v0, 0x1388

    iput v0, p0, Ltmsdkobf/ev;->ky:I

    return-void
.end method


# virtual methods
.method public declared-synchronized aB(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdkobf/ev;->kT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aF(I)V
    .locals 1
    .parameter

    .prologue
    .line 32
    monitor-enter p0

    if-lez p1, :cond_0

    .line 33
    :try_start_0
    iput p1, p0, Ltmsdkobf/ev;->jO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aG(I)V
    .locals 1
    .parameter

    .prologue
    .line 48
    monitor-enter p0

    if-lez p1, :cond_0

    .line 49
    :try_start_0
    iput p1, p0, Ltmsdkobf/ev;->kb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aH(I)V
    .locals 1
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    if-lez p1, :cond_0

    .line 65
    :try_start_0
    iput p1, p0, Ltmsdkobf/ev;->kg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aI(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    if-lez p1, :cond_0

    .line 81
    :try_start_0
    iput p1, p0, Ltmsdkobf/ev;->kh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aJ(I)V
    .locals 1
    .parameter

    .prologue
    .line 141
    monitor-enter p0

    if-lez p1, :cond_0

    .line 142
    :try_start_0
    iput p1, p0, Ltmsdkobf/ev;->kl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aT()I
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ev;->jO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aU()I
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ev;->kh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aV()Z
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/ev;->kX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aW()I
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ev;->kl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/ev;->kT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aY()Z
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/ev;->kU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aZ()I
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ev;->ky:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ba()Ltmsdkobf/ev;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    new-instance v0, Ltmsdkobf/ev;

    invoke-direct {v0}, Ltmsdkobf/ev;-><init>()V

    .line 210
    iget-boolean v1, p0, Ltmsdkobf/ev;->lk:Z

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->h(Z)V

    .line 211
    iget v1, p0, Ltmsdkobf/ev;->jO:I

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->aF(I)V

    .line 212
    iget v1, p0, Ltmsdkobf/ev;->kg:I

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->aH(I)V

    .line 213
    iget v1, p0, Ltmsdkobf/ev;->kb:I

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->aG(I)V

    .line 214
    iget-boolean v1, p0, Ltmsdkobf/ev;->kX:Z

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->g(Z)V

    .line 215
    iget v1, p0, Ltmsdkobf/ev;->kh:I

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->aI(I)V

    .line 216
    iget-boolean v1, p0, Ltmsdkobf/ev;->lp:Z

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->i(Z)V

    .line 217
    iget v1, p0, Ltmsdkobf/ev;->kl:I

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->aJ(I)V

    .line 218
    iget-object v1, p0, Ltmsdkobf/ev;->kT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/ev;->aB(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Ltmsdkobf/ev;->ba()Ltmsdkobf/ev;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltmsdkobf/ev;->kX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Z)V
    .locals 1
    .parameter

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltmsdkobf/ev;->lk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(Z)V
    .locals 1
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltmsdkobf/ev;->lp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[MSNum:%d ,Wifi:%d,GPRS:%d,ODay:%d,isMerged:%b,AfQ:%b,Silent:%b,mLog:%d,tag:%s]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ltmsdkobf/ev;->jO:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ltmsdkobf/ev;->kb:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Ltmsdkobf/ev;->kg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Ltmsdkobf/ev;->kh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Ltmsdkobf/ev;->kX:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Ltmsdkobf/ev;->lk:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Ltmsdkobf/ev;->lp:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Ltmsdkobf/ev;->kl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Ltmsdkobf/ev;->kT:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_0
    monitor-exit p0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    const-string v0, "error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
