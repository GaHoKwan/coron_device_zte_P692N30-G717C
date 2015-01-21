.class final Ljava/net/ProxySelectorImpl;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private getSystemPropertyInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 121
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, string:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 128
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 125
    .restart local p2
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 4
    .parameter "host"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    const-string v3, "localhost"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 169
    goto :goto_0

    .line 171
    :cond_2
    const-string v3, "127.0.0.1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 172
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, iex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "host"
    .parameter "nonProxyHosts"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 137
    :cond_0
    const/4 v4, 0x0

    .line 157
    :goto_0
    return v4

    .line 141
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v3, patternBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 143
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 144
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :sswitch_0
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :sswitch_1
    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 156
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, pattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;
    .locals 4
    .parameter "hostKey"
    .parameter "portKey"
    .parameter "type"
    .parameter "defaultPort"

    .prologue
    .line 111
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    const/4 v2, 0x0

    .line 117
    :goto_0
    return-object v2

    .line 116
    :cond_1
    invoke-direct {p0, p2, p4}, Ljava/net/ProxySelectorImpl;->getSystemPropertyInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, port:I
    new-instance v2, Ljava/net/Proxy;

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0
.end method

.method private selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;
    .locals 10
    .parameter "uri"

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "uri == null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, scheme:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 45
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "scheme == null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 49
    :cond_1
    const-string v0, ""

    .line 50
    .local v0, host:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_2
    invoke-static {v0}, Ljava/net/ProxySelectorImpl;->isLocalHost(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 55
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No proyx setting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 103
    :cond_3
    :goto_0
    return-object v4

    .line 60
    :cond_4
    const/4 v3, -0x1

    .line 61
    .local v3, port:I
    const/4 v4, 0x0

    .line 62
    .local v4, proxy:Ljava/net/Proxy;
    const/4 v2, 0x0

    .line 63
    .local v2, nonProxyHostsKey:Ljava/lang/String;
    const/4 v1, 0x1

    .line 64
    .local v1, httpProxyOkay:Z
    const-string v6, "http"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 65
    const/16 v3, 0x50

    .line 66
    const-string v2, "http.nonProxyHosts"

    .line 67
    const-string v6, "http.proxyHost"

    const-string v7, "http.proxyPort"

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v6, v7, v8, v3}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v4

    .line 82
    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 84
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0

    .line 68
    :cond_5
    const-string v6, "https"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 69
    const/16 v3, 0x1bb

    .line 70
    const-string v2, "https.nonProxyHosts"

    .line 71
    const-string v6, "https.proxyHost"

    const-string v7, "https.proxyPort"

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v6, v7, v8, v3}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v4

    goto :goto_1

    .line 72
    :cond_6
    const-string v6, "ftp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 73
    const/16 v3, 0x50

    .line 74
    const-string v2, "ftp.nonProxyHosts"

    .line 75
    const-string v6, "ftp.proxyHost"

    const-string v7, "ftp.proxyPort"

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v6, v7, v8, v3}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v4

    goto :goto_1

    .line 76
    :cond_7
    const-string v6, "socket"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 77
    const/4 v1, 0x0

    goto :goto_1

    .line 79
    :cond_8
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0

    .line 87
    :cond_9
    if-nez v4, :cond_3

    .line 91
    if-eqz v1, :cond_a

    .line 92
    const-string v6, "proxyHost"

    const-string v7, "proxyPort"

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v6, v7, v8, v3}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v4

    .line 93
    if-nez v4, :cond_3

    .line 98
    :cond_a
    const-string v6, "socksProxyHost"

    const-string v7, "socksProxyPort"

    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/16 v9, 0x438

    invoke-direct {p0, v6, v7, v8, v9}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v4

    .line 99
    if-nez v4, :cond_3

    .line 103
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto/16 :goto_0
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1
    .parameter "uri"
    .parameter "sa"
    .parameter "ioe"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 33
    :cond_1
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/net/ProxySelectorImpl;->selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
