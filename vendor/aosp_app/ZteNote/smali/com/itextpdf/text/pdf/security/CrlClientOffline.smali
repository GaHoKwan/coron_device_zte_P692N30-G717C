.class public Lcom/itextpdf/text/pdf/security/CrlClientOffline;
.super Ljava/lang/Object;
.source "CrlClientOffline.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/security/CrlClient;


# instance fields
.field private crls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/cert/CRL;)V
    .locals 3
    .parameter "crl"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/security/CrlClientOffline;->crls:Ljava/util/ArrayList;

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/security/CrlClientOffline;->crls:Ljava/util/ArrayList;

    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "crlEncoded"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/CrlClientOffline;->crls:Ljava/util/ArrayList;

    .line 69
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/CrlClientOffline;->crls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "checkCert"
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/CrlClientOffline;->crls:Ljava/util/ArrayList;

    return-object v0
.end method
