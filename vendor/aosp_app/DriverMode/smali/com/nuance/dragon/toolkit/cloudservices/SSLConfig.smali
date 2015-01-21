.class public Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/NMTConfig;


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    const-string v0, "certSummary"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "certData"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    const-string v1, "SSL_Socket_Enable"

    const-string v2, "TRUE"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    const-string v1, "SSL_SelfSigned_Cert"

    const-string v2, "TRUE"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    const-string v1, "SSL_Cert_Summary"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    const-string v1, "SSL_Cert_Data"

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
