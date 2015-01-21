.class public Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;
.super Lcom/nuance/dragon/toolkit/cloudservices/a;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

.field private b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

.field private c:Z

.field private final d:Ljava/lang/Runnable;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c:Z

    sget-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c:Z

    sget-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->e:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/a;->addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    return-void
.end method

.method protected canStartTransaction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createCommandContext(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/d;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    return-object v0
.end method

.method public bridge synthetic currentTransaction()Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->currentTransaction()Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getCalllogSender(Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionState()Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-object v0
.end method

.method public getSessionEvent(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    const-string v0, "SESSIONID"

    return-object v0
.end method

.method public bridge synthetic getTransactionCount()I
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->getTransactionCount()I

    move-result v0

    return v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    const-string v0, "UNIQUEID"

    return-object v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c:Z

    return-void
.end method
