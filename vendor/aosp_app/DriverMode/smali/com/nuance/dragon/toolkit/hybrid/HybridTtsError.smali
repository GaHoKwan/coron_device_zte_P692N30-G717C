.class public final Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;->b:Z

    return-void
.end method


# virtual methods
.method public final getTransactionError()Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsError;->b:Z

    return v0
.end method
