.class public abstract Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCloudImpersonator()Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;-><init>()V

    return-object v0
.end method

.method public static final createCloudServices(Landroid/content/Context;Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/c;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/c;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;)V

    return-object v0
.end method


# virtual methods
.method public abstract addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V
.end method

.method public abstract currentTransaction()Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
.end method

.method public abstract getCalllogSender(Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender;
.end method

.method public abstract getConnectionState()Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
.end method

.method public abstract getSessionEvent(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract getTransactionCount()I
.end method

.method public abstract getUniqueID()Ljava/lang/String;
.end method

.method public abstract release()V
.end method
