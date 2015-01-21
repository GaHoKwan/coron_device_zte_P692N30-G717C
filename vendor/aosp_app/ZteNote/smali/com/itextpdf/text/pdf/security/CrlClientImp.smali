.class public Lcom/itextpdf/text/pdf/security/CrlClientImp;
.super Ljava/lang/Object;
.source "CrlClientImp.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/security/CrlClient;


# static fields
.field private static final LOGGER:Lcom/itextpdf/text/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/itextpdf/text/pdf/security/CrlClientImp;

    invoke-static {v0}, Lcom/itextpdf/text/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/security/CrlClientImp;->LOGGER:Lcom/itextpdf/text/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .locals 12
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
    const/4 v8, 0x0

    .line 80
    if-nez p2, :cond_1

    .line 81
    if-nez p1, :cond_0

    move-object v0, v8

    .line 111
    :goto_0
    return-object v0

    .line 83
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/text/pdf/security/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p2

    .line 85
    :cond_1
    if-nez p2, :cond_2

    move-object v0, v8

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v7, urlt:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 89
    .local v3, con:Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    div-int/lit8 v9, v9, 0x64

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 90
    new-instance v9, Ljava/io/IOException;

    const-string v10, "invalid.http.response.1"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v3           #con:Ljava/net/HttpURLConnection;
    .end local v7           #urlt:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 108
    .local v4, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/itextpdf/text/pdf/security/CrlClientImp;->LOGGER:Lcom/itextpdf/text/log/Logger;

    sget-object v10, Lcom/itextpdf/text/log/Level;->ERROR:Lcom/itextpdf/text/log/Level;

    invoke-interface {v9, v10}, Lcom/itextpdf/text/log/Logger;->isLogging(Lcom/itextpdf/text/log/Level;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 109
    sget-object v9, Lcom/itextpdf/text/pdf/security/CrlClientImp;->LOGGER:Lcom/itextpdf/text/log/Logger;

    const-string v10, "CrlClientImp"

    invoke-interface {v9, v10, v4}, Lcom/itextpdf/text/log/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    move-object v0, v8

    .line 111
    goto :goto_0

    .line 93
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v3       #con:Ljava/net/HttpURLConnection;
    .restart local v7       #urlt:Ljava/net/URL;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 94
    .local v5, inp:Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 95
    .local v2, buf:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v5, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 98
    .local v6, n:I
    if-gtz v6, :cond_5

    .line 102
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
