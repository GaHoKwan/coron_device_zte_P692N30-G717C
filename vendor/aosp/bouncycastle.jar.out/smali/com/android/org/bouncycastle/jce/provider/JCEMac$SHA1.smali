.class public Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA1;
.super Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 289
    return-void
.end method