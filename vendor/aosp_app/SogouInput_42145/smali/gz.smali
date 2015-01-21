.class Lgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lgy;

.field final synthetic a:Lhd;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lgz;->a:Lgy;

    iput-object p2, p0, Lgz;->a:Ljava/lang/String;

    iput-object p3, p0, Lgz;->b:Ljava/lang/String;

    iput-object p4, p0, Lgz;->a:Ljava/lang/Integer;

    iput-object p5, p0, Lgz;->a:Lhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lgz;->a:Lgy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is allow load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgz;->a:Lgy;

    invoke-static {v2}, Lgy;->a(Lgy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgy;->a(Lgy;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_0
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->b(Lgy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lgz;->a:Lgy;

    iget-object v1, p0, Lgz;->a:Ljava/lang/String;

    iget-object v2, p0, Lgz;->b:Ljava/lang/String;

    iget-object v3, p0, Lgz;->a:Ljava/lang/Integer;

    iget-object v4, p0, Lgz;->a:Lhd;

    invoke-static {v0, v1, v2, v3, v4}, Lgy;->a(Lgy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lgz;->a:Lgy;

    invoke-static {v0}, Lgy;->a(Lgy;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgz;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lgz;->a:Lgy;

    invoke-static {v1}, Lgy;->a(Lgy;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lgz;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lgz;->a:Lgy;

    invoke-static {v1}, Lgy;->b(Lgy;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lgz;->a:Lgy;

    iget-object v1, p0, Lgz;->a:Ljava/lang/String;

    iget-object v2, p0, Lgz;->b:Ljava/lang/String;

    iget-object v3, p0, Lgz;->a:Ljava/lang/Integer;

    iget-object v4, p0, Lgz;->a:Lhd;

    invoke-static {v0, v1, v2, v3, v4}, Lgy;->a(Lgy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V

    .line 119
    :cond_2
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
