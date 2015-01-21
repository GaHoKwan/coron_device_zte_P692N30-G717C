.class public final Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;
.super Ljava/lang/Object;
.source "AndroidDigestFactory.java"


# static fields
.field private static final BouncyCastleFactoryClassName:Ljava/lang/String;

.field private static final FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

.field private static final OpenSSLFactoryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OpenSSL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BouncyCastle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    .line 35
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    .local v3, factoryImplementationClass:Ljava/lang/Class;
    :goto_0
    const-class v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "does not implement AndroidDigestFactoryInterface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 36
    .end local v3           #factoryImplementationClass:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 38
    .local v1, e1:Ljava/lang/ClassNotFoundException;
    :try_start_1
    sget-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .restart local v3       #factoryImplementationClass:Ljava/lang/Class;
    goto :goto_0

    .line 39
    .end local v3           #factoryImplementationClass:Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 40
    .local v2, e2:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find AndroidDigestFactoryInterface implementation. Looked for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 51
    .end local v1           #e1:Ljava/lang/ClassNotFoundException;
    .end local v2           #e2:Ljava/lang/ClassNotFoundException;
    .restart local v3       #factoryImplementationClass:Ljava/lang/Class;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    sput-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 57
    return-void

    .line 52
    :catch_2
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 54
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method
