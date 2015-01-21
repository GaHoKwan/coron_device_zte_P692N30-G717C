.class Lwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lwo;

.field final synthetic a:Lwu;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwo;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lwu;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lwp;->a:Lwo;

    iput-object p2, p0, Lwp;->a:Ljava/lang/String;

    iput-object p3, p0, Lwp;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lwp;->b:Ljava/lang/String;

    iput-object p5, p0, Lwp;->b:Ljava/lang/Integer;

    iput-object p6, p0, Lwp;->a:Lwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lwp;->a:Lwo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is allow load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lwp;->a:Lwo;

    invoke-static {v2}, Lwo;->a(Lwo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwo;->a(Lwo;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->a(Lwo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->a(Lwo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->a(Lwo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_0
    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->a(Lwo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->b(Lwo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lwp;->a:Lwo;

    iget-object v1, p0, Lwp;->a:Ljava/lang/String;

    iget-object v2, p0, Lwp;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lwp;->b:Ljava/lang/String;

    iget-object v4, p0, Lwp;->b:Ljava/lang/Integer;

    iget-object v5, p0, Lwp;->a:Lwu;

    invoke-static/range {v0 .. v5}, Lwo;->a(Lwo;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lwu;)V

    .line 104
    :cond_1
    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->a(Lwo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwp;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lwp;->a:Lwo;

    invoke-static {v1}, Lwo;->a(Lwo;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lwp;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lwp;->a:Lwo;

    invoke-static {v1}, Lwo;->b(Lwo;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lwp;->a:Lwo;

    iget-object v1, p0, Lwp;->a:Ljava/lang/String;

    iget-object v2, p0, Lwp;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lwp;->b:Ljava/lang/String;

    iget-object v4, p0, Lwp;->b:Ljava/lang/Integer;

    iget-object v5, p0, Lwp;->a:Lwu;

    invoke-static/range {v0 .. v5}, Lwo;->a(Lwo;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lwu;)V

    .line 107
    :cond_2
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
