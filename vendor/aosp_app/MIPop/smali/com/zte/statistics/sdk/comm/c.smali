.class Lcom/zte/statistics/sdk/comm/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic co:Lcom/zte/statistics/sdk/comm/b;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/comm/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/statistics/sdk/comm/c;->co:Lcom/zte/statistics/sdk/comm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/comm/b;Lcom/zte/statistics/sdk/comm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/c;-><init>(Lcom/zte/statistics/sdk/comm/b;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
