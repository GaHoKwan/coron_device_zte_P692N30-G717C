.class public Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;
.super Ljava/lang/Object;
.source "CertPinManager.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final hostnameCache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private lastModified:J

.field private final pinFile:Ljava/io/File;

.field private final verifier:Ljavax/net/ssl/DefaultHostnameVerifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)V
    .locals 2
    .parameter "path"
    .parameter "store"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->entries:Ljava/util/Map;

    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    .line 39
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->verifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->initialized:Z

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->pinFile:Ljava/io/File;

    .line 59
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->rebuild()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)V
    .locals 2
    .parameter "store"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->entries:Ljava/util/Map;

    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    .line 39
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->verifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->initialized:Z

    .line 48
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/keychain/pins"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->pinFile:Ljava/io/File;

    .line 49
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 50
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->rebuild()V

    .line 51
    return-void
.end method

.method private cacheIsNotValid()Z
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->pinFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->lastModified:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMatchingCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hostname"

    .prologue
    .line 162
    const-string v0, ""

    .line 163
    .local v0, bestMatch:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, cn:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 169
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->verifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v3, p1, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    move-object v0, v1

    goto :goto_0

    .line 173
    .end local v1           #cn:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getPinFileEntries(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "pinFileContents"

    .prologue
    .line 123
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "s"
    .parameter "e"

    .prologue
    .line 183
    return-void
.end method

.method private declared-synchronized lookup(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;
    .locals 3
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 134
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->cacheIsNotValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->rebuild()V

    .line 139
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, cn:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;

    goto :goto_0

    .line 146
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->getMatchingCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1, v0}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v0           #cn:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readPinFile()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->pinFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;

    const-string v2, "Unexpected error reading pin list; failing."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private declared-synchronized rebuild()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->readPinFile()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, pinFileContents:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 90
    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->getPinFileEntries(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v2, entry:Ljava/lang/String;
    :try_start_1
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v5, v2, v7}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;-><init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)V

    .line 93
    .local v5, pin:Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->entries:Ljava/util/Map;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->getCommonName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/PinEntryException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .end local v5           #pin:Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pinlist contains a malformed pin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 86
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #e:Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;
    .end local v2           #entry:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #pinFileContents:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 100
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #pinFileContents:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v7}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 103
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->pinFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->lastModified:J

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->initialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public chainIsNotPinned(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "hostname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
        }
    .end annotation

    .prologue
    .line 75
    .local p2, chain:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->lookup(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;

    move-result-object v0

    .line 78
    .local v0, entry:Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->chainIsNotPinned(Ljava/util/List;)Z

    move-result v1

    .line 81
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
