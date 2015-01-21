.class public Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/Engine$1;,
        Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;,
        Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    }
.end annotation


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private volatile serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .parameter "serviceName"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "algorithm"
    .parameter "provider"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "algorithm == null"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 169
    .local v0, service:Ljava/security/Provider$Service;
    if-nez v0, :cond_1

    .line 170
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v1

    throw v1

    .line 172
    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 8
    .parameter "algorithm"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "Null algorithm name"

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    move-result v2

    .line 139
    .local v2, newCacheVersion:I
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    .line 140
    .local v0, cacheEntry:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    if-eqz v0, :cond_1

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$000(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->cacheVersion:I
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$100(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 143
    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->service:Ljava/security/Provider$Service;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$200(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 155
    .local v3, service:Ljava/security/Provider$Service;
    :goto_0
    new-instance v4, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    invoke-virtual {v3, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V

    return-object v4

    .line 145
    .end local v3           #service:Ljava/security/Provider$Service;
    :cond_1
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 148
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 150
    .restart local v3       #service:Ljava/security/Provider$Service;
    if-nez v3, :cond_3

    .line 151
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 153
    :cond_3
    new-instance v4, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    invoke-direct {v4, p1, v2, v3, v7}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/security/Provider$Service;Lorg/apache/harmony/security/fortress/Engine$1;)V

    iput-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    goto :goto_0
.end method
