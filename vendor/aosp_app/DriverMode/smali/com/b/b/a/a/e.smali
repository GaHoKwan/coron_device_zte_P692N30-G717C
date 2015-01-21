.class final Lcom/b/b/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/b/b/a/a/c;


# direct methods
.method private constructor <init>(Lcom/b/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/b/a/a/e;->a:Lcom/b/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/b/a/a/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/b/a/a/e;-><init>(Lcom/b/b/a/a/c;)V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
