.class Lse;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private a:J

.field private a:Ljava/util/Timer;

.field private a:Ljava/util/TimerTask;

.field final synthetic a:Lsd;

.field private b:J

.field private final c:J


# direct methods
.method public constructor <init>(Lsd;Ljava/io/OutputStream;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lse;->a:Lsd;

    .line 99
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lse;->a:J

    .line 101
    iget-wide v0, p0, Lse;->a:J

    iput-wide v0, p0, Lse;->b:J

    .line 102
    iput-wide p3, p0, Lse;->c:J

    .line 103
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lse;->a:Ljava/util/Timer;

    .line 104
    new-instance v0, Lsf;

    invoke-direct {v0, p0, p1}, Lsf;-><init>(Lse;Lsd;)V

    iput-object v0, p0, Lse;->a:Ljava/util/TimerTask;

    .line 111
    return-void
.end method

.method static synthetic a(Lse;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lse;->a:J

    return-wide v0
.end method

.method static synthetic a(Lse;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, Lse;->b:J

    return-wide p1
.end method

.method static synthetic b(Lse;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lse;->b:J

    return-wide v0
.end method

.method static synthetic c(Lse;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lse;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lse;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lse;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 124
    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 127
    iget-object v0, p0, Lse;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lse;->a:Ljava/util/Timer;

    iget-object v1, p0, Lse;->a:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 130
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 5
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lse;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    iget-wide v0, p0, Lse;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lse;->a:J

    .line 144
    iget-wide v0, p0, Lse;->a:J

    iget-wide v2, p0, Lse;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lse;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_0
    iget-object v0, p0, Lse;->a:Lsd;

    iget-wide v1, p0, Lse;->a:J

    iget-wide v3, p0, Lse;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lsd;->a(Lsd;JJ)V

    .line 148
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lse;->write([BII)V

    .line 118
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lse;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    iget-wide v0, p0, Lse;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lse;->a:J

    .line 135
    iget-wide v0, p0, Lse;->a:J

    iget-wide v2, p0, Lse;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lse;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 138
    :cond_0
    iget-object v0, p0, Lse;->a:Lsd;

    iget-wide v1, p0, Lse;->a:J

    iget-wide v3, p0, Lse;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lsd;->a(Lsd;JJ)V

    .line 139
    return-void
.end method
