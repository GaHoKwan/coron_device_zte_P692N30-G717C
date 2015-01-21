.class public Lcom/itextpdf/text/pdf/security/DigestAlgorithms;
.super Ljava/lang/Object;
.source "DigestAlgorithms.java"


# static fields
.field public static final RIPEMD160:Ljava/lang/String; = "RIPEMD160"

.field public static final SHA1:Ljava/lang/String; = "SHA-1"

.field public static final SHA256:Ljava/lang/String; = "SHA-256"

.field public static final SHA384:Ljava/lang/String; = "SHA-384"

.field public static final SHA512:Ljava/lang/String; = "SHA-512"

.field private static final allowedDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final digestNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.2.5"

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.2.2"

    const-string v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.14.3.2.26"

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.36.3.2.2"

    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.36.3.2.1"

    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.36.3.2.3"

    const-string v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.4"

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.2"

    const-string v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.5"

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.14"

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.11"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.12"

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.1.1.13"

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.2.5"

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.113549.2.2"

    const-string v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.840.10040.4.3"

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.3.1"

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.3.2"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.3.3"

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "2.16.840.1.101.3.4.3.4"

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.36.3.3.1.3"

    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.36.3.3.1.2"

    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.3.36.3.3.1.4"

    const-string v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    const-string v1, "1.2.643.2.2.9"

    const-string v2, "GOST3411"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "MD2"

    const-string v2, "1.2.840.113549.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "MD-2"

    const-string v2, "1.2.840.113549.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "MD5"

    const-string v2, "1.2.840.113549.2.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "MD-5"

    const-string v2, "1.2.840.113549.2.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA1"

    const-string v2, "1.3.14.3.2.26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA-1"

    const-string v2, "1.3.14.3.2.26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA224"

    const-string v2, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA-224"

    const-string v2, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA256"

    const-string v2, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA-256"

    const-string v2, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA384"

    const-string v2, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA-384"

    const-string v2, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA512"

    const-string v2, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "SHA-512"

    const-string v2, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "RIPEMD128"

    const-string v2, "1.3.36.3.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "RIPEMD-128"

    const-string v2, "1.3.36.3.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "RIPEMD160"

    const-string v2, "1.3.36.3.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "RIPEMD-160"

    const-string v2, "1.3.36.3.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "RIPEMD256"

    const-string v2, "1.3.36.3.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    const-string v1, "RIPEMD-256"

    const-string v2, "1.3.36.3.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllowedDigests(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 146
    sget-object v0, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->allowedDigests:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "oid"

    .prologue
    .line 132
    sget-object v1, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->digestNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 136
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method
