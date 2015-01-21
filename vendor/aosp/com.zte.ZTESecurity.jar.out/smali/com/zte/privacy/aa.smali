.class public Lcom/zte/privacy/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/ah;


# instance fields
.field protected kt:Lcom/zte/privacy/ah;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/privacy/aa;->kt:Lcom/zte/privacy/ah;

    return-void
.end method


# virtual methods
.method public a(ILcom/zte/privacy/ac;Ljava/lang/Object;)Lcom/zte/privacy/aA;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aa;->kt:Lcom/zte/privacy/ah;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/privacy/ah;->a(ILcom/zte/privacy/ac;Ljava/lang/Object;)Lcom/zte/privacy/aA;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/zte/privacy/az;)Lcom/zte/privacy/y;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aa;->kt:Lcom/zte/privacy/ah;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/ah;->a(ILcom/zte/privacy/az;)Lcom/zte/privacy/y;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aa;->kt:Lcom/zte/privacy/ah;

    invoke-interface {v0}, Lcom/zte/privacy/ah;->a()V

    return-void
.end method

.method public c(Ljava/lang/String;Z)Lcom/zte/privacy/m;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aa;->kt:Lcom/zte/privacy/ah;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/ah;->c(Ljava/lang/String;Z)Lcom/zte/privacy/m;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aa;->kt:Lcom/zte/privacy/ah;

    invoke-interface {v0, p1}, Lcom/zte/privacy/ah;->z(Ljava/lang/String;)V

    return-void
.end method
