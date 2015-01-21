.class public abstract Lcom/zte/zdm/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3


# instance fields
.field private a:Lcom/zte/zdm/a/d;

.field private b:Lcom/zte/zdm/b/e;

.field protected o:Lcom/zte/zdm/b/a;


# direct methods
.method protected constructor <init>(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zdm/a/a;->a(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)Lcom/zte/zdm/b/a;

    return-void
.end method

.method protected constructor <init>(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;Lcom/zte/zdm/d/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zte/zdm/a/a;->a(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;Lcom/zte/zdm/d/a/b;)Lcom/zte/zdm/b/a;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/a;->a:Lcom/zte/zdm/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->h()V

    return-void
.end method


# virtual methods
.method public A()Lcom/zte/zdm/a/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/a;->a:Lcom/zte/zdm/a/d;

    return-object v0
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->b(Z)V

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->b(Z)V

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "engine is busy ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v1}, Lcom/zte/zdm/b/a;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->k()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;)Lcom/zte/zdm/b/a;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the engine is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/b/a;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/g/d/c;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p3}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/e/b;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/g/d/c;Lcom/zte/zdm/e/b;Lcom/zte/zdm/d/a/b;)Lcom/zte/zdm/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/b/a;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/g/d/c;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p3}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/e/b;)V

    const-string v0, "create engine with connectionListener!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p4}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/d/a/b;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/a;->a:Lcom/zte/zdm/a/d;

    return-void
.end method

.method public a(Lcom/zte/zdm/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/a;->b:Lcom/zte/zdm/b/e;

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->j()Lcom/zte/zdm/b/b/a;

    move-result-object v0

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->j()Lcom/zte/zdm/b/b/a;

    move-result-object v0

    const-string v1, "delay_install"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " delayIntall is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  after save to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    iget-object v1, p0, Lcom/zte/zdm/a/a;->b:Lcom/zte/zdm/b/e;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/e;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/a;->a([B)V

    return-void
.end method

.method public abstract b()Lcom/zte/zdm/a/b;
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/a;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->n()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "accept install"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->b(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "not need to report"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/a;->c(Z)V

    return-void

    :cond_0
    const-string v0, "need to report"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    const-string v0, "reject install"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->n()V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->b(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "delay install"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->b(Z)V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/a/a;->a()V

    invoke-virtual {p0}, Lcom/zte/zdm/a/a;->k()V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    iget-object v1, p0, Lcom/zte/zdm/a/a;->b:Lcom/zte/zdm/b/e;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/e;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const-string v1, "org.openmobilealliance.dm.firmwareupdate.userrequest"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    iget-object v1, p0, Lcom/zte/zdm/a/a;->b:Lcom/zte/zdm/b/e;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/e;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const-string v1, "org.openmobilealliance.dm.firmwareupdate.devicerequest"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    iget-object v1, p0, Lcom/zte/zdm/a/a;->b:Lcom/zte/zdm/b/e;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/e;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const-string v1, "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    iget-object v1, p0, Lcom/zte/zdm/a/a;->b:Lcom/zte/zdm/b/e;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/e;)V

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    const-string v1, "org.openmobilealliance.dm.firmwareupdate.userrequest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/a;->o:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->m()V

    return-void
.end method
