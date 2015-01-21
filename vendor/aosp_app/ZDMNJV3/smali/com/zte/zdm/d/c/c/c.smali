.class public Lcom/zte/zdm/d/c/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "b64"

.field public static final b:Ljava/lang/String; = "bool"

.field public static final c:Ljava/lang/String; = "chr"

.field public static final d:Ljava/lang/String; = "float"

.field public static final e:Ljava/lang/String; = "int"

.field public static final f:Ljava/lang/String; = "node"

.field public static final g:Ljava/lang/String; = "null"

.field public static final h:Ljava/lang/String; = "xml"

.field public static final i:Ljava/lang/String; = "date"

.field public static final j:Ljava/lang/String; = "time"

.field public static final k:Ljava/lang/String; = "chr"

.field public static final l:[Ljava/lang/String; = null

.field public static final m:Ljava/lang/String; = "text/plain"


# instance fields
.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "b64"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bool"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "chr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "node"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zdm/d/c/c/c;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/d/c/c/c;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/zdm/d/c/c/c;->t:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/d/c/c/c;->u:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/c/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/zte/zdm/d/c/c/c;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/zdm/d/c/c/c;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/d/c/c/c;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "b64"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->n:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "b64"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/zte/zdm/d/c/c/c;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/zte/zdm/d/c/c/c;->l:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "b64"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bool"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->p:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "b64"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chr"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->q:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "bool"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "int"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->r:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "chr"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "node"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->s:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "int"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->t:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "node"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xml"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/c;->u:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "null"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "date"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "xml"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public k()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "date"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "float"

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public l()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "time"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "float"

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
