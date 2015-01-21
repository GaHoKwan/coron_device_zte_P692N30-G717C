.class Lnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lni;

.field final synthetic a:Lno;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lni;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lnj;->a:Lni;

    iput-object p2, p0, Lnj;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lnj;->a:Ljava/lang/String;

    iput-object p4, p0, Lnj;->b:Ljava/lang/String;

    iput-object p5, p0, Lnj;->a:Lno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lnj;->a:Lni;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is allow load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnj;->a:Lni;

    invoke-static {v2}, Lni;->a(Lni;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lni;->a(Lni;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lnj;->a:Lni;

    invoke-static {v0}, Lni;->a(Lni;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lnj;->a:Lni;

    invoke-static {v0}, Lni;->a(Lni;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lnj;->a:Lni;

    invoke-static {v0}, Lni;->a(Lni;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_0
    iget-object v0, p0, Lnj;->a:Lni;

    iget-object v1, p0, Lnj;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lnj;->a:Ljava/lang/String;

    iget-object v3, p0, Lnj;->b:Ljava/lang/String;

    iget-object v4, p0, Lnj;->a:Lno;

    invoke-static {v0, v1, v2, v3, v4}, Lni;->a(Lni;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V

    .line 107
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
