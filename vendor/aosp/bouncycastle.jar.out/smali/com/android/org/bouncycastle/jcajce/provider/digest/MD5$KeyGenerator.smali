.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "MD5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    const-string v0, "HMACMD5"

    const/16 v1, 0x80

    new-instance v2, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 32
    return-void
.end method