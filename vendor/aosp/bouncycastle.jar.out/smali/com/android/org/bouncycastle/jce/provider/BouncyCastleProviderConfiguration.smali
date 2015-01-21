.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile dhDefaultParams:Ljavax/crypto/spec/DHParameterSpec;

.field private dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getDHDefaultParameters()Ljavax/crypto/spec/DHParameterSpec;
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 139
    .local v0, spec:Ljavax/crypto/spec/DHParameterSpec;
    if-eqz v0, :cond_0

    .line 144
    .end local v0           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :goto_0
    return-object v0

    .restart local v0       #spec:Ljavax/crypto/spec/DHParameterSpec;
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0
.end method

.method public getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 127
    .local v0, spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_0

    .line 132
    .end local v0           #spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .restart local v0       #spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_0
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "parameterName"
    .parameter "parameter"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 35
    .local v2, securityManager:Ljava/lang/SecurityManager;
    const-string v3, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 39
    if-eqz v2, :cond_0

    .line 41
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 44
    :cond_0
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_1

    if-nez p2, :cond_3

    :cond_1
    move-object v0, p2

    .line 46
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 53
    .end local p2
    .local v0, curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    if-nez v0, :cond_4

    .line 55
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 121
    .end local v0           #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :goto_1
    return-void

    .line 50
    .restart local p2
    :cond_3
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    .end local p2
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .restart local v0       #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_0

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 62
    .end local v0           #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .restart local p2
    :cond_5
    const-string v3, "ecImplicitlyCa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 64
    if-eqz v2, :cond_6

    .line 66
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 69
    :cond_6
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_7

    if-nez p2, :cond_8

    .line 71
    :cond_7
    check-cast p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .end local p2
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    .line 75
    .restart local p2
    :cond_8
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    .end local p2
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    .line 78
    .restart local p2
    :cond_9
    const-string v3, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 82
    if-eqz v2, :cond_a

    .line 84
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 87
    :cond_a
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_b

    if-nez p2, :cond_c

    :cond_b
    move-object v1, p2

    .line 89
    check-cast v1, Ljavax/crypto/spec/DHParameterSpec;

    .line 96
    .local v1, dhSpec:Ljavax/crypto/spec/DHParameterSpec;
    if-nez v1, :cond_d

    .line 98
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    .line 93
    .end local v1           #dhSpec:Ljavax/crypto/spec/DHParameterSpec;
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "not a valid DHParameterSpec"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .restart local v1       #dhSpec:Ljavax/crypto/spec/DHParameterSpec;
    :cond_d
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    .end local v1           #dhSpec:Ljavax/crypto/spec/DHParameterSpec;
    :cond_e
    const-string v3, "DhDefaultParams"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    if-eqz v2, :cond_f

    .line 109
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 112
    :cond_f
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_10

    if-nez p2, :cond_11

    .line 114
    :cond_10
    check-cast p2, Ljavax/crypto/spec/DHParameterSpec;

    .end local p2
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_1

    .line 118
    .restart local p2
    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "not a valid DHParameterSpec"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
