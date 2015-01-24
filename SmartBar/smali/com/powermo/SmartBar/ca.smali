.class Lcom/powermo/SmartBar/ca;
.super Lcom/powermo/SmartBar/cf;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bz;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/ca;->a:Lcom/powermo/SmartBar/bz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powermo/SmartBar/cf;-><init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/cf;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/powermo/SmartBar/ca;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ca;->a:Lcom/powermo/SmartBar/bz;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ca;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/bz;->a(I)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ca;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
