.class public final Lcom/zte/zdm/d/c/bc;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/zte/zdm/d/c/bb;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/bc;->a(Lcom/zte/zdm/d/c/bb;)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/c/bc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/bc;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bc;->b:Lcom/zte/zdm/d/c/bb;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bc;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bc;->b:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method
