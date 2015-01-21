.class Lcom/zte/statistics/sdk/comm/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic co:Lcom/zte/statistics/sdk/comm/b;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/comm/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/statistics/sdk/comm/a;->co:Lcom/zte/statistics/sdk/comm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/comm/b;Lcom/zte/statistics/sdk/comm/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/a;-><init>(Lcom/zte/statistics/sdk/comm/b;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
