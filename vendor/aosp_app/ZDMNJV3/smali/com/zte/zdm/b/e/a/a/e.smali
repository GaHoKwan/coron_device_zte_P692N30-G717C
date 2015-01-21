.class public Lcom/zte/zdm/b/e/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/a/k;


# instance fields
.field private final a:Lcom/zte/zdm/d/a/k;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/b/e/a/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/zte/zdm/b/e/a/a/g;->a(Lcom/zte/zdm/b/e/a/a/g;)Lcom/zte/zdm/d/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/a/e;->a:Lcom/zte/zdm/d/a/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/b/e/a/a/g;Lcom/zte/zdm/b/e/a/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/a/e;-><init>(Lcom/zte/zdm/b/e/a/a/g;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "RegularResponser requireReponse"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/e;->a:Lcom/zte/zdm/d/a/k;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
