.class abstract Lcom/powermo/SmartBar/cf;
.super Lcom/powermo/SmartBar/ch;


# instance fields
.field private a:I

.field protected b:Ljava/lang/Object;

.field final synthetic c:Lcom/powermo/SmartBar/bz;


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/cf;->c:Lcom/powermo/SmartBar/bz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powermo/SmartBar/ch;-><init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/ch;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/cf;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/SmartBar/cf;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/cf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cf;-><init>(Lcom/powermo/SmartBar/bz;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v1, p0, Lcom/powermo/SmartBar/cf;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/powermo/SmartBar/cf;->a:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/powermo/SmartBar/cf;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/powermo/SmartBar/cf;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powermo/SmartBar/cf;->a:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/SmartBar/cf;->a:I

    return-void
.end method
