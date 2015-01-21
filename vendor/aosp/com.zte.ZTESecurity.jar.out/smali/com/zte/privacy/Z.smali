.class public Lcom/zte/privacy/Z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/y;


# instance fields
.field protected ks:Lcom/zte/privacy/y;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/privacy/Z;->ks:Lcom/zte/privacy/y;

    return-void
.end method


# virtual methods
.method public A(I)Lcom/zte/privacy/an;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/Z;->ks:Lcom/zte/privacy/y;

    invoke-interface {v0, p1}, Lcom/zte/privacy/y;->A(I)Lcom/zte/privacy/an;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/Z;->ks:Lcom/zte/privacy/y;

    invoke-interface {v0}, Lcom/zte/privacy/y;->a()V

    return-void
.end method

.method public aq()Lcom/zte/privacy/A;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/Z;->ks:Lcom/zte/privacy/y;

    invoke-interface {v0}, Lcom/zte/privacy/y;->aq()Lcom/zte/privacy/A;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Z)Lcom/zte/privacy/m;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/Z;->ks:Lcom/zte/privacy/y;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/y;->c(Ljava/lang/String;Z)Lcom/zte/privacy/m;

    move-result-object v0

    return-object v0
.end method
