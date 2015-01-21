.class public Lcom/android/quicksearchbox/util/JavaNetHttpHelper;
.super Ljava/lang/Object;
.source "JavaNetHttpHelper.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/HttpHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/util/JavaNetHttpHelper$PassThroughRewriter;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DBG:Z = false

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "QSB.JavaNetHttpHelper"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private mConnectTimeout:I

.field private mReadTimeout:I

.field private final mRewriter:Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;)V
    .locals 2
    .parameter "rewriter"
    .parameter "userAgent"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mUserAgent:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mRewriter:Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;

    .line 56
    return-void
.end method

.method private createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 129
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mRewriter:Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;

    invoke-interface {v6, p1}, Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, u:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 132
    .local v0, c:Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 133
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 137
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v0, v3, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v6, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    if-eqz v6, :cond_1

    .line 142
    iget v6, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 144
    :cond_1
    iget v6, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    if-eqz v6, :cond_2

    .line 145
    iget v6, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 147
    :cond_2
    return-object v0
.end method

.method private getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 152
    new-instance v4, Lcom/android/quicksearchbox/util/HttpHelper$HttpException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/quicksearchbox/util/HttpHelper$HttpException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 158
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v3, string:Ljava/lang/StringBuilder;
    const/16 v4, 0x1000

    new-array v1, v4, [C

    .line 163
    .local v1, chars:[C
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    .local v0, bytes:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 164
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public get(Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;)Ljava/lang/String;
    .locals 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 83
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 85
    .local v0, c:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 86
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 88
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v1
.end method

.method public post(Lcom/android/quicksearchbox/util/HttpHelper$PostRequest;)Ljava/lang/String;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/util/HttpHelper$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, c:Ljava/net/HttpURLConnection;
    if-nez p2, :cond_0

    .line 106
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .end local p2           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object p2, v1

    .line 108
    .end local v1           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2       #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "Content-Length"

    if-nez p3, :cond_4

    move v4, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 111
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 112
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 114
    if-eqz p3, :cond_2

    .line 115
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 116
    .local v2, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 119
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 121
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v3

    .line 108
    :cond_4
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v3
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .parameter "timeoutMillis"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    .line 171
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .parameter "timeoutMillis"

    .prologue
    .line 174
    iput p1, p0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    .line 175
    return-void
.end method
