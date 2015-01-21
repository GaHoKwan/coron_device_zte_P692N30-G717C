.class public final Lcom/zte/zdm/d/c/z;
.super Lcom/zte/zdm/d/c/u;


# instance fields
.field private b:Lcom/zte/zdm/d/c/y;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/u;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/z;->a(Lcom/zte/zdm/d/c/y;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/y;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/z;->b:Lcom/zte/zdm/d/c/y;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/y;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "devInf cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/z;->b:Lcom/zte/zdm/d/c/y;

    return-void
.end method
