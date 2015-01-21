.class public final Ltmsdkobf/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private i:I

.field private kE:[B

.field private kF:Ljava/lang/String;

.field private kb:I

.field private kg:I

.field private kl:I

.field private kn:J

.field private kq:J

.field private ks:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v4, p0, Ltmsdkobf/ea;->kn:J

    .line 19
    iput v0, p0, Ltmsdkobf/ea;->kb:I

    .line 20
    iput v0, p0, Ltmsdkobf/ea;->kg:I

    .line 21
    iput-wide v4, p0, Ltmsdkobf/ea;->kq:J

    .line 22
    iput-object v3, p0, Ltmsdkobf/ea;->kE:[B

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/ea;->ks:J

    .line 26
    iput-object v3, p0, Ltmsdkobf/ea;->kF:Ljava/lang/String;

    .line 27
    iput v2, p0, Ltmsdkobf/ea;->kl:I

    .line 28
    iput v2, p0, Ltmsdkobf/ea;->i:I

    .line 48
    return-void
.end method

.method public constructor <init>(IIJ[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v4, p0, Ltmsdkobf/ea;->kn:J

    .line 19
    iput v0, p0, Ltmsdkobf/ea;->kb:I

    .line 20
    iput v0, p0, Ltmsdkobf/ea;->kg:I

    .line 21
    iput-wide v4, p0, Ltmsdkobf/ea;->kq:J

    .line 22
    iput-object v3, p0, Ltmsdkobf/ea;->kE:[B

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/ea;->ks:J

    .line 26
    iput-object v3, p0, Ltmsdkobf/ea;->kF:Ljava/lang/String;

    .line 27
    iput v2, p0, Ltmsdkobf/ea;->kl:I

    .line 28
    iput v2, p0, Ltmsdkobf/ea;->i:I

    .line 53
    iput p1, p0, Ltmsdkobf/ea;->kb:I

    .line 54
    iput p2, p0, Ltmsdkobf/ea;->kg:I

    .line 55
    iput-wide p3, p0, Ltmsdkobf/ea;->kq:J

    .line 56
    iput-object p5, p0, Ltmsdkobf/ea;->kE:[B

    .line 58
    if-eqz p5, :cond_0

    .line 59
    array-length v0, p5

    int-to-long v0, v0

    iput-wide v0, p0, Ltmsdkobf/ea;->ks:J

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public final X()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Ltmsdkobf/ea;->kn:J

    return-wide v0
.end method

.method public final Y()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Ltmsdkobf/ea;->kb:I

    return v0
.end method

.method public final Z()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Ltmsdkobf/ea;->kg:I

    return v0
.end method

.method public final declared-synchronized aA(I)Ltmsdkobf/ea;
    .locals 1
    .parameter

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ea;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-object p0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ah()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Ltmsdkobf/ea;->kq:J

    return-wide v0
.end method

.method public final ai()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ltmsdkobf/ea;->kE:[B

    return-object v0
.end method

.method public final aj()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Ltmsdkobf/ea;->ks:J

    return-wide v0
.end method

.method public final ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltmsdkobf/ea;->kF:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized al()I
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ea;->kl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized am()I
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/ea;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final av(Ljava/lang/String;)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Ltmsdkobf/ea;->kF:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final ax(I)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput p1, p0, Ltmsdkobf/ea;->kb:I

    .line 81
    return-object p0
.end method

.method public final ay(I)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput p1, p0, Ltmsdkobf/ea;->kg:I

    .line 92
    return-object p0
.end method

.method public final declared-synchronized az(I)Ltmsdkobf/ea;
    .locals 1
    .parameter

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/ea;->kl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-object p0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(J)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-wide p1, p0, Ltmsdkobf/ea;->kn:J

    .line 70
    return-object p0
.end method

.method public final e([B)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Ltmsdkobf/ea;->kE:[B

    .line 114
    return-object p0
.end method

.method public final f(J)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-wide p1, p0, Ltmsdkobf/ea;->kq:J

    .line 103
    return-object p0
.end method

.method public final g(J)Ltmsdkobf/ea;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-wide p1, p0, Ltmsdkobf/ea;->ks:J

    .line 125
    return-object p0
.end method
