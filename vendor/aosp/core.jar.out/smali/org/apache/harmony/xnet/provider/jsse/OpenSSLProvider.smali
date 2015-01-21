.class public final Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidOpenSSL"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    const-string v0, "AndroidOpenSSL"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "Android\'s OpenSSL-backed security provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 28
    const-string v0, "SSLContext.SSL"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "SSLContext.SSLv3"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "SSLContext.TLS"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "SSLContext.TLSv1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "SSLContext.TLSv1.1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "SSLContext.TLSv1.2"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "SSLContext.Default"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "MessageDigest.SHA-1"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "Alg.Alias.MessageDigest.SHA1"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "Alg.Alias.MessageDigest.SHA"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "MessageDigest.SHA-256"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "Alg.Alias.MessageDigest.SHA256"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "MessageDigest.SHA-384"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "Alg.Alias.MessageDigest.SHA384"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "MessageDigest.SHA-512"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "Alg.Alias.MessageDigest.SHA512"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "MessageDigest.MD5"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string v1, "MD5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "KeyPairGenerator.RSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyPairGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "KeyPairGenerator.DSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAKeyPairGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "KeyFactory.RSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "Signature.MD5WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "Alg.Alias.Signature.MD5WithRSAEncryption"

    const-string v1, "MD5WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "Alg.Alias.Signature.MD5/RSA"

    const-string v1, "MD5WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string v1, "MD5WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string v1, "MD5WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "Signature.SHA1WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "Alg.Alias.Signature.SHA1WithRSA"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "Alg.Alias.Signature.SHA1/RSA"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "Alg.Alias.Signature.SHA-1/RSA"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string v1, "SHA1WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "Signature.SHA256WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string v1, "SHA256WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string v1, "SHA256WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "Signature.SHA384WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    const-string v1, "SHA384WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string v1, "SHA384WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "Signature.SHA512WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    const-string v1, "SHA512WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string v1, "SHA512WithRSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "Signature.SHA1withDSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "Alg.Alias.Signature.SHA/DSA"

    const-string v1, "SHA1withDSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "Alg.Alias.Signature.DSA"

    const-string v1, "SHA1withDSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    const-string v1, "SHA1withDSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    const-string v1, "SHA1withDSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "Alg.Alias.Signature.DSAWithSHA1"

    const-string v1, "SHA1withDSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "Alg.Alias.Signature.1.2.840.10040.4.3"

    const-string v1, "SHA1withDSA"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "Signature.NONEwithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "SecureRandom.SHA1PRNG"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRandom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "Cipher.RSA/ECB/NoPadding"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA$Raw;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string v1, "RSA/ECB/NoPadding"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "Cipher.RSA/ECB/PKCS1Padding"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA$PKCS1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method
