.class public final Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;
    }
.end annotation


# static fields
.field public static final EVP_PKEY_DH:I = 0x1c

.field public static final EVP_PKEY_DSA:I = 0x74

.field public static final EVP_PKEY_EC:I = 0x198

.field public static final EVP_PKEY_RSA:I = 0x6

.field public static final OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAND_SEED_LENGTH_IN_BYTES:I = 0x400

.field public static final RSA_NO_PADDING:I = 0x3

.field public static final RSA_PKCS1_PADDING:I = 0x1

.field public static final SSL_MODE_HANDSHAKE_CUTTHROUGH:J = 0x40L

.field public static final SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION:J = 0x10000L

.field public static final SSL_OP_NO_SSLv3:J = 0x2000000L

.field public static final SSL_OP_NO_TICKET:J = 0x4000L

.field public static final SSL_OP_NO_TLSv1:J = 0x4000000L

.field public static final SSL_OP_NO_TLSv1_1:J = 0x10000000L

.field public static final SSL_OP_NO_TLSv1_2:J = 0x8000000L

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String; = null

.field private static final SUPPORTED_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field public static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->clinit()V

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    .line 223
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    .line 255
    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    const-string v2, "RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    const-string v2, "RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const-string v2, "ECDH-ECDSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDH-ECDSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDH-ECDSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const-string v2, "ECDH-RSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDH-RSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDH-RSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const-string v2, "ECDHE-ECDSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDHE-ECDSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDHE-ECDSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v2, "ECDHE-RSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDHE-RSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDHE-RSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "DHE-RSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "DHE-RSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const-string v2, "DHE-DSS-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const-string v2, "DHE-DSS-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDH-ECDSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDH-RSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDHE-ECDSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDHE-RSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "EDH-RSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "EDH-DSS-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    const-string v2, "DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const-string v2, "EDH-RSA-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const-string v2, "EDH-DSS-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const-string v2, "EXP-RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-EDH-RSA-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-EDH-DSS-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    const-string v2, "NULL-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    const-string v2, "NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const-string v2, "ECDH-ECDSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const-string v2, "ECDH-RSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const-string v2, "ECDHE-ECDSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const-string v2, "ECDHE-RSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    const-string v2, "ADH-RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const-string v2, "ADH-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const-string v2, "ADH-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ADH-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const-string v2, "ADH-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const-string v2, "AECDH-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const-string v2, "AECDH-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const-string v2, "AECDH-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "AECDH-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const-string v2, "EXP-ADH-RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-ADH-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    const-string v2, "AECDH-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 347
    .local v0, size:I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    .line 348
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 349
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v0

    .line 350
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 685
    return-void
.end method

.method public static native DSA_generate_key(I[B[B[B[B)I
.end method

.method public static native ENGINE_add(I)I
.end method

.method public static native ENGINE_by_id(Ljava/lang/String;)I
.end method

.method public static native ENGINE_finish(I)I
.end method

.method public static native ENGINE_free(I)I
.end method

.method public static native ENGINE_init(I)I
.end method

.method public static native ENGINE_load_dynamic()V
.end method

.method public static native ENGINE_load_private_key(ILjava/lang/String;)I
.end method

.method public static native EVP_CIPHER_CTX_cleanup(I)V
.end method

.method public static native EVP_CipherFinal_ex(I[BI)I
.end method

.method public static native EVP_CipherInit_ex(I[B[BZ)I
.end method

.method public static native EVP_CipherUpdate(I[BI[BI)I
.end method

.method public static native EVP_DigestFinal(I[BI)I
.end method

.method public static native EVP_DigestInit(I)I
.end method

.method public static native EVP_DigestUpdate(I[BII)V
.end method

.method public static native EVP_MD_CTX_copy(I)I
.end method

.method public static native EVP_MD_CTX_destroy(I)V
.end method

.method public static native EVP_MD_block_size(I)I
.end method

.method public static native EVP_MD_size(I)I
.end method

.method public static native EVP_PKEY_cmp(II)I
.end method

.method public static native EVP_PKEY_free(I)V
.end method

.method public static native EVP_PKEY_new_DSA([B[B[B[B[B)I
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I
.end method

.method public static native EVP_PKEY_size(I)I
.end method

.method public static native EVP_PKEY_type(I)I
.end method

.method public static native EVP_SignFinal(I[BII)I
.end method

.method public static native EVP_SignInit(Ljava/lang/String;)I
.end method

.method public static native EVP_SignUpdate(I[BII)V
.end method

.method public static native EVP_VerifyFinal(I[BIII)I
.end method

.method public static native EVP_VerifyInit(Ljava/lang/String;)I
.end method

.method public static native EVP_VerifyUpdate(I[BII)V
.end method

.method public static native EVP_get_cipherbyname(Ljava/lang/String;)I
.end method

.method public static native EVP_get_digestbyname(Ljava/lang/String;)I
.end method

.method public static native RAND_bytes([B)V
.end method

.method public static native RAND_load_file(Ljava/lang/String;J)I
.end method

.method public static native RAND_seed([B)V
.end method

.method public static native RSA_generate_key_ex(I[B)I
.end method

.method public static native RSA_private_decrypt(I[B[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public static native RSA_private_encrypt(I[B[BII)I
.end method

.method public static native RSA_public_decrypt(I[B[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public static native RSA_public_encrypt(I[B[BII)I
.end method

.method public static native RSA_size(I)I
.end method

.method public static native SSL_CTX_disable_npn(I)V
.end method

.method public static native SSL_CTX_enable_npn(I)V
.end method

.method public static native SSL_CTX_free(I)V
.end method

.method public static native SSL_CTX_new()I
.end method

.method public static native SSL_CTX_set_session_id_context(I[B)V
.end method

.method public static native SSL_SESSION_cipher(I)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_free(I)V
.end method

.method public static native SSL_SESSION_get_time(I)J
.end method

.method public static native SSL_SESSION_get_version(I)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_session_id(I)[B
.end method

.method public static native SSL_check_private_key(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_clear_mode(IJ)J
.end method

.method public static native SSL_clear_options(IJ)J
.end method

.method public static native SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public static native SSL_free(I)V
.end method

.method public static native SSL_get_certificate(I)[[B
.end method

.method public static native SSL_get_mode(I)J
.end method

.method public static native SSL_get_npn_negotiated_protocol(I)[B
.end method

.method public static native SSL_get_options(I)J
.end method

.method public static native SSL_get_peer_cert_chain(I)[[B
.end method

.method public static native SSL_get_servername(I)Ljava/lang/String;
.end method

.method public static native SSL_interrupt(I)V
.end method

.method public static native SSL_new(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_read(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_renegotiate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_cipher_lists(I[Ljava/lang/String;)V
.end method

.method public static native SSL_set_client_CA_list(I[[B)V
.end method

.method public static native SSL_set_mode(IJ)J
.end method

.method public static native SSL_set_options(IJ)J
.end method

.method public static native SSL_set_session(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_session_creation_enabled(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_tlsext_host_name(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_verify(II)V
.end method

.method public static native SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_use_OpenSSL_PrivateKey(II)V
.end method

.method public static native SSL_use_PrivateKey(I[B)V
.end method

.method public static native SSL_use_certificate(I[[B)V
.end method

.method public static native SSL_write(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1
    .parameter "principal"

    .prologue
    .line 200
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 4
    .parameter "principal"
    .parameter "algorithm"

    .prologue
    .line 207
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 208
    .local v0, digest:[B
    const/4 v2, 0x0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 209
    .end local v0           #digest:[B
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1
    .parameter "principal"

    .prologue
    .line 203
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "standard"
    .parameter "openssl"

    .prologue
    .line 227
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "cipherSuites"

    .prologue
    .line 548
    if-nez p0, :cond_0

    .line 549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cipherSuites == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 553
    aget-object v0, p0, v1

    .line 554
    .local v0, cipherSuite:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 555
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuites["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_1
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 552
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_3
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 567
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 569
    .end local v0           #cipherSuite:Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "protocols"

    .prologue
    .line 511
    if-nez p0, :cond_0

    .line 512
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "protocols == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 515
    aget-object v1, p0, v0

    .line 516
    .local v1, protocol:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocols["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_1
    const-string v2, "SSLv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLSv1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLSv1.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    .end local v1           #protocol:Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method private static native clinit()V
.end method

.method public static native d2i_PKCS8_PRIV_KEY_INFO([B)I
.end method

.method public static native d2i_PUBKEY([B)I
.end method

.method public static native d2i_SSL_SESSION([B)I
.end method

.method public static encodeCertificates([Ljava/security/cert/Certificate;)[[B
    .locals 3
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 427
    array-length v2, p0

    new-array v0, v2, [[B

    .line 428
    .local v0, certificateBytes:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 429
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-object v0
.end method

.method public static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 444
    array-length v2, p0

    new-array v1, v2, [[B

    .line 445
    .local v1, principalBytes:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 446
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    return-object v1
.end method

.method public static getDefaultCipherSuites()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSL_RSA_WITH_RC4_128_MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSL_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SSL_RSA_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getDefaultProtocols()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedProtocols()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLSv1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLSv1.2"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static native get_DSA_params(I)[[B
.end method

.method public static native get_RSA_private_params(I)[[B
.end method

.method public static native get_RSA_public_params(I)[[B
.end method

.method public static native i2d_DSAPrivateKey(I)[B
.end method

.method public static native i2d_DSAPublicKey(I)[B
.end method

.method public static native i2d_PKCS8_PRIV_KEY_INFO(I)[B
.end method

.method public static native i2d_PUBKEY(I)[B
.end method

.method public static native i2d_RSAPrivateKey(I)[B
.end method

.method public static native i2d_RSAPublicKey(I)[B
.end method

.method public static native i2d_SSL_SESSION(I)[B
.end method

.method public static setEnabledCipherSuites(I[Ljava/lang/String;)V
    .locals 6
    .parameter "ssl"
    .parameter "cipherSuites"

    .prologue
    .line 533
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    .line 534
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v4, opensslSuites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 536
    aget-object v0, p1, v2

    .line 537
    .local v0, cipherSuite:Ljava/lang/String;
    const-string v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 535
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, openssl:Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v1, v0

    .line 542
    .local v1, cs:Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #cs:Ljava/lang/String;
    :cond_1
    move-object v1, v3

    .line 541
    goto :goto_2

    .line 544
    .end local v0           #cipherSuite:Ljava/lang/String;
    .end local v3           #openssl:Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {p0, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_cipher_lists(I[Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public static setEnabledProtocols(I[Ljava/lang/String;)V
    .locals 8
    .parameter "ssl"
    .parameter "protocols"

    .prologue
    .line 480
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    .line 484
    const-wide/32 v3, 0x1e000000

    .line 485
    .local v3, optionsToSet:J
    const-wide/16 v1, 0x0

    .line 486
    .local v1, optionsToClear:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_4

    .line 487
    aget-object v5, p1, v0

    .line 488
    .local v5, protocol:Ljava/lang/String;
    const-string v6, "SSLv3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 489
    const-wide/32 v6, -0x2000001

    and-long/2addr v3, v6

    .line 490
    const-wide/32 v6, 0x2000000

    or-long/2addr v1, v6

    .line 486
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    const-string v6, "TLSv1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    const-wide/32 v6, -0x4000001

    and-long/2addr v3, v6

    .line 493
    const-wide/32 v6, 0x4000000

    or-long/2addr v1, v6

    goto :goto_1

    .line 494
    :cond_1
    const-string v6, "TLSv1.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 495
    const-wide/32 v6, -0x10000001

    and-long/2addr v3, v6

    .line 496
    const-wide/32 v6, 0x10000000

    or-long/2addr v1, v6

    goto :goto_1

    .line 497
    :cond_2
    const-string v6, "TLSv1.2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 498
    const-wide/32 v6, -0x8000001

    and-long/2addr v3, v6

    .line 499
    const-wide/32 v6, 0x8000000

    or-long/2addr v1, v6

    goto :goto_1

    .line 502
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 506
    .end local v5           #protocol:Ljava/lang/String;
    :cond_4
    invoke-static {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_options(IJ)J

    .line 507
    invoke-static {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 508
    return-void
.end method
