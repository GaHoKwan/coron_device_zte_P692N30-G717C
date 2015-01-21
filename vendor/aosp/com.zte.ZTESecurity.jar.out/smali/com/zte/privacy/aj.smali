.class public Lcom/zte/privacy/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/a;


# instance fields
.field protected kO:Lcom/zte/privacy/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/ah;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aj;->kO:Lcom/zte/privacy/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zte/privacy/a;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/ah;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/aj;->kO:Lcom/zte/privacy/a;

    invoke-interface {v0}, Lcom/zte/privacy/a;->a()V

    return-void
.end method
