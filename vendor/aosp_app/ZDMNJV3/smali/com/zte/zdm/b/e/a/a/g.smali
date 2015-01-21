.class public Lcom/zte/zdm/b/e/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/a/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/a/g;->a:Lcom/zte/zdm/d/a/k;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/b/e/a/a/g;)Lcom/zte/zdm/d/a/k;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/g;->a:Lcom/zte/zdm/d/a/k;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/b/e/a/a/e;
    .locals 2

    new-instance v0, Lcom/zte/zdm/b/e/a/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/b/e/a/a/e;-><init>(Lcom/zte/zdm/b/e/a/a/g;Lcom/zte/zdm/b/e/a/a/f;)V

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/g;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/a/g;->a:Lcom/zte/zdm/d/a/k;

    return-object p0
.end method
