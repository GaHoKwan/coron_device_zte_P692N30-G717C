.class public Lcom/zte/zdm/application/d/c/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/zte/zdm/application/d/c/e;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/c/g;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/c/g;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zte/zdm/application/d/c/f;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/c/f;-><init>()V

    goto :goto_0
.end method
