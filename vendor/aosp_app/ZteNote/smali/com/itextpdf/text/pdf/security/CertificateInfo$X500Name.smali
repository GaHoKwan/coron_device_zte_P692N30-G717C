.class public Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/security/CertificateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X500Name"
.end annotation


# static fields
.field public static final C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DefaultSymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GENERATION:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GIVENNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final INITIALS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ST:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SURNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final T:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field public values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->T:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->SN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->ST:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->SURNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 106
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->GIVENNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->INITIALS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->GENERATION:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 115
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->E:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->UID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    .line 138
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "O"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->T:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "OU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->ST:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->SN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->UID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "UID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->SURNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->GIVENNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->INITIALS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->GENERATION:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "dirName"

    .prologue
    const/4 v8, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    .line 189
    new-instance v2, Lcom/itextpdf/text/pdf/security/CertificateInfo$X509NameTokenizer;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, nTok:Lcom/itextpdf/text/pdf/security/CertificateInfo$X509NameTokenizer;
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X509NameTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, token:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 195
    .local v1, index:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 196
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "badly.formated.directory.string"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 199
    :cond_0
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, id:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 202
    .local v5, vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .restart local v5       #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #index:I
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8
    .parameter "seq"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    .line 164
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 166
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/bouncycastle/asn1/ASN1Set;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Set;

    .line 169
    .local v4, set:Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 170
    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 171
    .local v3, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    sget-object v6, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, id:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 169
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 175
    .local v5, vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 176
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .restart local v5       #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4           #set:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    .local v0, vs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFieldArray(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
