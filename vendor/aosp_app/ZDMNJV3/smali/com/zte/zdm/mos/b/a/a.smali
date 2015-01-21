.class public Lcom/zte/zdm/mos/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/mos/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "./DevDetail/URI/MaxDepth"

.field public static final b:Ljava/lang/String; = "./DevDetail/URI/MaxTotLen"

.field public static final c:Ljava/lang/String; = "./DevDetail/URI/MaxSegLen"

.field public static final d:Ljava/lang/String; = "./DevDetail/DevTyp"

.field public static final e:Ljava/lang/String; = "./DevDetail/OEM"

.field public static final f:Ljava/lang/String; = "./DevDetail/FwV"

.field public static final g:Ljava/lang/String; = "./DevDetail/SwV"

.field public static final h:Ljava/lang/String; = "./DevDetail/HwV"

.field public static final i:Ljava/lang/String; = "./DevDetail/LrgObj"

.field private static final j:J = 0x1L


# instance fields
.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/mos/b/a/a;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/mos/b/a/a;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/zdm/mos/b/a/a;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/mos/b/a/a;->o:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/zdm/mos/b/a/a;->p:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/zdm/mos/b/a/a;->q:Ljava/lang/String;

    iput-object p8, p0, Lcom/zte/zdm/mos/b/a/a;->r:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/zdm/mos/b/a/a;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/b/f/h/b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/zte/zdm/b/f/h/b;)V
    .locals 1

    const-string v0, "./DevDetail/URI/MaxDepth"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->a(Ljava/lang/String;)V

    const-string v0, "./DevDetail/URI/MaxTotLen"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->b(Ljava/lang/String;)V

    const-string v0, "./DevDetail/URI/MaxSegLen"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->c(Ljava/lang/String;)V

    const-string v0, "./DevDetail/DevTyp"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->d(Ljava/lang/String;)V

    const-string v0, "./DevDetail/OEM"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->e(Ljava/lang/String;)V

    const-string v0, "./DevDetail/FwV"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->f(Ljava/lang/String;)V

    const-string v0, "./DevDetail/SwV"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->g(Ljava/lang/String;)V

    const-string v0, "./DevDetail/HwV"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->h(Ljava/lang/String;)V

    const-string v0, "./DevDetail/LrgObj"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/a/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->l:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->m:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->n:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->o:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->p:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->q:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->r:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/a/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/a/a;->s:Ljava/lang/String;

    return-void
.end method
