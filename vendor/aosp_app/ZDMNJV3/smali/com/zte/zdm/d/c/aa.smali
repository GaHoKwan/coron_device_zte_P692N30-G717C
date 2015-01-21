.class public final Lcom/zte/zdm/d/c/aa;
.super Lcom/zte/zdm/d/c/ai;


# instance fields
.field private a:Lcom/zte/zdm/d/c/bm;

.field private b:Lcom/zte/zdm/d/c/bb;

.field private c:Lcom/zte/zdm/d/c/ap;

.field private d:Lcom/zte/zdm/d/c/z;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/ai;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/ai;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/d/c/aa;->a:Lcom/zte/zdm/d/c/bm;

    iput-object p2, p0, Lcom/zte/zdm/d/c/aa;->b:Lcom/zte/zdm/d/c/bb;

    iput-object p3, p0, Lcom/zte/zdm/d/c/aa;->c:Lcom/zte/zdm/d/c/ap;

    iput-object p4, p0, Lcom/zte/zdm/d/c/aa;->d:Lcom/zte/zdm/d/c/z;

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/aa;->a:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/aa;->c:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/aa;->b:Lcom/zte/zdm/d/c/bb;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/aa;->a:Lcom/zte/zdm/d/c/bm;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/aa;->d:Lcom/zte/zdm/d/c/z;

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/aa;->b:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method

.method public c()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/aa;->c:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method

.method public d()Lcom/zte/zdm/d/c/z;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/aa;->d:Lcom/zte/zdm/d/c/z;

    return-object v0
.end method
