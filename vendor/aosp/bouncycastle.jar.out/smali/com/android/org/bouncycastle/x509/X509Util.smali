.class Lcom/android/org/bouncycastle/x509/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    }
.end annotation


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 45
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    .line 46
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    .line 47
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    .line 55
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "MD5WITHRSAENCRYPTION"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "MD5WITHRSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA1WITHRSAENCRYPTION"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA1WITHRSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA256WITHRSAENCRYPTION"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA256WITHRSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHRSAENCRYPTION"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHRSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA512WITHRSAENCRYPTION"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA512WITHRSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA1WITHRSAANDMGF1"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA256WITHRSAANDMGF1"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHRSAANDMGF1"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA512WITHRSAANDMGF1"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA1WITHDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "DSAWITHSHA1"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA256WITHDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA512WITHDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA1WITHECDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "ECDSAWITHSHA1"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA256WITHECDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHECDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v5, "SHA512WITHECDSA"

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 141
    .local v0, sha1AlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v5, "SHA1WITHRSAANDMGF1"

    const/16 v6, 0x14

    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    .local v1, sha256AlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v5, "SHA256WITHRSAANDMGF1"

    const/16 v6, 0x20

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 158
    .local v2, sha384AlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v5, "SHA384WITHRSAANDMGF1"

    const/16 v6, 0x30

    invoke-static {v2, v6}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    .local v3, sha512AlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v5, "SHA512WITHRSAANDMGF1"

    const/16 v6, 0x40

    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method static calculateSignature(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .parameter "sigOid"
    .parameter "sigName"
    .parameter "provider"
    .parameter "key"
    .parameter "random"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 290
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no signature algorithm specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/x509/X509Util;->getSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 295
    .local v0, sig:Ljava/security/Signature;
    if-eqz p4, :cond_1

    .line 297
    invoke-virtual {v0, p3, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 304
    :goto_0
    invoke-interface {p5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 306
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1

    .line 301
    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method static calculateSignature(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .parameter "sigOid"
    .parameter "sigName"
    .parameter "key"
    .parameter "random"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no signature algorithm specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSignatureInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 263
    .local v0, sig:Ljava/security/Signature;
    if-eqz p3, :cond_1

    .line 265
    invoke-virtual {v0, p2, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 272
    :goto_0
    invoke-interface {p4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 274
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1

    .line 269
    :cond_1
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method static convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 3
    .parameter "principal"

    .prologue
    .line 314
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot convert principal"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 5
    .parameter "hashAlgId"
    .parameter "saltSize"

    .prologue
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method

.method static getAlgNames()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 213
    sget-object v2, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 214
    .local v0, e:Ljava/util/Enumeration;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, l:Ljava/util/List;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method static getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1
    .parameter "algorithmName"

    .prologue
    .line 178
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 180
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getImplementation(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    .locals 6
    .parameter "baseName"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 414
    .local v2, prov:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    .line 419
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-static {p0, v3, v4}, Lcom/android/org/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;

    move-result-object v1

    .line 420
    .local v1, imp:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    if-eqz v1, :cond_0

    .line 422
    return-object v1

    .line 427
    :cond_0
    :try_start_0
    aget-object v3, v2, v0

    invoke-static {p0, p1, v3}, Lcom/android/org/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v1           #imp:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find implementation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    .restart local v1       #imp:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    .locals 8
    .parameter "baseName"
    .parameter "algorithm"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 362
    move-object p1, v0

    goto :goto_0

    .line 365
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 372
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 374
    .local v3, clsLoader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1

    .line 376
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 383
    .local v2, cls:Ljava/lang/Class;
    :goto_1
    new-instance v5, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;-><init>(Ljava/lang/Object;Ljava/security/Provider;)V

    return-object v5

    .line 380
    .end local v2           #cls:Ljava/lang/Class;
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .restart local v2       #cls:Ljava/lang/Class;
    goto :goto_1

    .line 385
    .end local v2           #cls:Ljava/lang/Class;
    .end local v3           #clsLoader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v4

    .line 387
    .local v4, e:Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but no class \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 390
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 392
    .local v4, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but class \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" inaccessible!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 397
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find implementation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 4
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 443
    .local v0, prov:Ljava/security/Provider;
    if-nez v0, :cond_0

    .line 445
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_0
    return-object v0
.end method

.method static getSigAlgID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2
    .parameter "sigOid"
    .parameter "algorithmName"

    .prologue
    .line 192
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 206
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v0, v1

    goto :goto_0

    .line 206
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method static getSignatureInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method static getSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 238
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0
.end method
