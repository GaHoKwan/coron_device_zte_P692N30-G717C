.class public Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cloudServices"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commandName"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    :cond_0
    return-void
.end method

.method public send(ILcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    new-instance v3, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;

    invoke-direct {v3, p0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->d:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->finish()V

    return-void
.end method

.method public send(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;)V
    .locals 1

    const/16 v0, 0x2710

    invoke-virtual {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->send(ILcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;)V

    return-void
.end method
