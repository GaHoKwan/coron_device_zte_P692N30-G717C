.class public Lcom/zte/zdm/b/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/g/e;


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/zdm/b/g/g;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    int-to-long v0, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/zdm/b/g/g;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zdm/b/g/g;->b:I

    iput-wide p1, p0, Lcom/zte/zdm/b/g/g;->a:J

    iput p3, p0, Lcom/zte/zdm/b/g/g;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    iget v2, p0, Lcom/zte/zdm/b/g/g;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    iget-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/g/g;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zte/zdm/b/g/g;->a:J

    return-void
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/b/g/g;->a:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/g/g;->b:I

    return v0
.end method
