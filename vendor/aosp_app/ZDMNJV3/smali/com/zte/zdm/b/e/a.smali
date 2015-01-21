.class public abstract Lcom/zte/zdm/b/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/d;


# instance fields
.field protected a:Lcom/zte/zdm/d/a/k;

.field protected b:Lcom/zte/zdm/b/b/a;

.field protected c:Z

.field protected d:Lcom/zte/zdm/b/e/e;

.field protected e:Lcom/zte/zdm/b/e/b;

.field protected f:Z

.field private g:Lcom/zte/zdm/g/e;

.field private h:Z

.field private i:Lcom/zte/zdm/g/e;

.field private j:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/zte/zdm/b/e/a;->c:Z

    iput-boolean v1, p0, Lcom/zte/zdm/b/e/a;->f:Z

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->g:Lcom/zte/zdm/g/e;

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->i:Lcom/zte/zdm/g/e;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->j:[B

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/e/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/zte/zdm/b/e/a;->c:Z

    iput-boolean v1, p0, Lcom/zte/zdm/b/e/a;->f:Z

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->g:Lcom/zte/zdm/g/e;

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->i:Lcom/zte/zdm/g/e;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->j:[B

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/e/a;->a(Lcom/zte/zdm/b/e/b;)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/e/b;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a;->e:Lcom/zte/zdm/b/e/b;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->k()Lcom/zte/zdm/d/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->a:Lcom/zte/zdm/d/a/k;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->l()Lcom/zte/zdm/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->b:Lcom/zte/zdm/b/b/a;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->m()Lcom/zte/zdm/b/e/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a;->d:Lcom/zte/zdm/b/e/e;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionContext agent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/a;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->i:Lcom/zte/zdm/g/e;

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set notifyUserResponsed to continue? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a;->f:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a;->c:Z

    return v0
.end method

.method public c()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wait : isUserAcceptContinue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->i:Lcom/zte/zdm/g/e;

    invoke-static {v0}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " aftert notify ; isUserAcceptContinue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a;->f:Z

    return v0
.end method

.method protected d()V
    .locals 2

    iget-object v1, p0, Lcom/zte/zdm/b/e/a;->j:[B

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a;->h:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()V
    .locals 2

    iget-object v1, p0, Lcom/zte/zdm/b/e/a;->j:[B

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->g:Lcom/zte/zdm/g/e;

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->g:Lcom/zte/zdm/g/e;

    invoke-static {v0}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    :cond_0
    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a;->h:Z

    return v0
.end method

.method public abstract g()V
.end method

.method public h()Lcom/zte/zdm/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a;->b:Lcom/zte/zdm/b/b/a;

    return-object v0
.end method
