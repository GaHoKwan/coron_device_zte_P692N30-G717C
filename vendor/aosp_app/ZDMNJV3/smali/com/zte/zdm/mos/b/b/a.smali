.class public final Lcom/zte/zdm/mos/b/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/mos/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "./DevInfo/DevId"

.field public static final b:Ljava/lang/String; = "./DevInfo/Man"

.field public static final c:Ljava/lang/String; = "./DevInfo/Mod"

.field public static final d:Ljava/lang/String; = "./DevInfo/DmV"

.field public static final e:Ljava/lang/String; = "./DevInfo/Lang"

.field private static final f:J = 0x1L


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/mos/b/b/a;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/mos/b/b/a;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/mos/b/b/a;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/zdm/mos/b/b/a;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/mos/b/b/a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/b/f/h/b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/zte/zdm/b/f/h/b;)V
    .locals 1

    const-string v0, "./DevInfo/DevId"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/b/a;->a(Ljava/lang/String;)V

    const-string v0, "./DevInfo/Man"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/b/a;->b(Ljava/lang/String;)V

    const-string v0, "./DevInfo/Mod"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/b/a;->c(Ljava/lang/String;)V

    const-string v0, "./DevInfo/DmV"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/b/a;->d(Ljava/lang/String;)V

    const-string v0, "./DevInfo/Lang"

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/b/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/b/a;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/b/a;->i:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/b/a;->j:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/b/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/b/a;->k:Ljava/lang/String;

    return-void
.end method
