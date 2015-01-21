.class public final Lzte/com/cn/driverMode/service/ch;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lzte/com/cn/driverMode/utils/h;

.field private b:Landroid/content/Context;

.field private c:Lzte/com/cn/driverMode/service/DMApplication;

.field private d:J

.field private e:I

.field private f:[Lzte/com/cn/driverMode/service/cg;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;

.field private i:Ljava/util/Map;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private volatile m:Z

.field private volatile n:Z

.field private o:Lzte/com/cn/driverMode/service/cf;

.field private p:J

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMApplication;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    iput v1, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ch;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/ch;->m:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/ch;->n:Z

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ch;->o:Lzte/com/cn/driverMode/service/cf;

    iput-wide v3, p0, Lzte/com/cn/driverMode/service/ch;->p:J

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/ch;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ch;->r:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {p1}, Lzte/com/cn/driverMode/service/DMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ch;->b:Landroid/content/Context;

    iput-object p2, p0, Lzte/com/cn/driverMode/service/ch;->l:Ljava/lang/String;

    iput-object p3, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/utils/h;->a(Landroid/content/Context;)Lzte/com/cn/driverMode/utils/h;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-array v2, p5, [Lzte/com/cn/driverMode/service/cg;

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v3, "zh-CN"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Referer"

    invoke-virtual {v0, v2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "before conn.connect()"

    const-string v3, "FileDownloader"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ch;->b(Ljava/net/HttpURLConnection;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "conn.getResponseCode()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileDownloader"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLastModified()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileDownloader"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lzte/com/cn/driverMode/service/ch;->p:J

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    iget v2, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    if-gtz v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->b:Landroid/content/Context;

    const v2, 0x7f080321

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->b:Landroid/content/Context;

    const v2, 0x7f080323

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/ch;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ch;->g:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ch;->h:Ljava/io/File;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p3}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v2, v2

    if-ne v0, v2, :cond_4

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-wide v2, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u7ecf\u4e0b\u8f7d\u7684\u957f\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    div-int/2addr v0, v1

    :goto_2
    iput v0, p0, Lzte/com/cn/driverMode/service/ch;->j:I

    return-void

    :cond_5
    iget v0, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->b:Landroid/content/Context;

    const v2, 0x7f080322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "content-disposition"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".*filename=(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Ljava/net/HttpURLConnection;)V
    .locals 4

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    return v0
.end method

.method public final a(Lzte/com/cn/driverMode/service/cf;)J
    .locals 12

    const/4 v8, 0x1

    const/4 v10, 0x0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ch;->o:Lzte/com/cn/driverMode/service/cf;

    iput-boolean v10, p0, Lzte/com/cn/driverMode/service/ch;->m:Z

    iput-boolean v10, p0, Lzte/com/cn/driverMode/service/ch;->n:Z

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->h:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v1, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    if-lez v1, :cond_0

    iget v1, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v3, Ljava/net/URL;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v10

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    add-int/lit8 v1, v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lzte/com/cn/driverMode/service/ch;->j:I

    if-ge v0, v1, :cond_2

    iget-wide v0, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    iget v2, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    iget-object v11, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    new-instance v0, Lzte/com/cn/driverMode/service/cg;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->u:I

    iget-object v4, p0, Lzte/com/cn/driverMode/service/ch;->h:Ljava/io/File;

    iget v5, p0, Lzte/com/cn/driverMode/service/ch;->j:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    add-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v9, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lzte/com/cn/driverMode/service/cg;-><init>(ILzte/com/cn/driverMode/service/ch;Ljava/net/URL;Ljava/io/File;III)V

    aput-object v0, v11, v9

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v0, v0, v9

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/cg;->setPriority(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/cg;->start()V

    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    const/4 v1, 0x0

    aput-object v1, v0, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "file download fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    move v0, v8

    :cond_5
    :goto_3
    if-eqz v0, :cond_c

    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move v9, v10

    move v0, v10

    :goto_4
    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    if-ge v9, v1, :cond_8

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v1, v1, v9

    if-eqz v1, :cond_7

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/cg;->a()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/cg;->b()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/ch;->q:Z

    if-nez v0, :cond_6

    iget-object v11, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    new-instance v0, Lzte/com/cn/driverMode/service/cg;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->u:I

    iget-object v4, p0, Lzte/com/cn/driverMode/service/ch;->h:Ljava/io/File;

    iget v5, p0, Lzte/com/cn/driverMode/service/ch;->j:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    add-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v9, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lzte/com/cn/driverMode/service/cg;-><init>(ILzte/com/cn/driverMode/service/ch;Ljava/net/URL;Ljava/io/File;III)V

    aput-object v0, v11, v9

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v0, v0, v9

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/cg;->setPriority(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/cg;->start()V

    :cond_6
    move v0, v8

    :cond_7
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/ch;->q:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->r:Ljava/lang/String;

    invoke-interface {p1, v1}, Lzte/com/cn/driverMode/service/cf;->a(Ljava/lang/String;)V

    :cond_9
    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/ch;->m:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/service/ch;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/ch;->n:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/service/ch;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-wide v0, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    :goto_5
    return-wide v0

    :cond_b
    if-eqz p1, :cond_5

    iget-wide v1, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    invoke-interface {p1, v1, v2}, Lzte/com/cn/driverMode/service/cf;->a(J)V

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/utils/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    iget-wide v2, p0, Lzte/com/cn/driverMode/service/ch;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lzte/com/cn/driverMode/service/ch;->p:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lzte/com/cn/driverMode/service/ch;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->h:Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->g:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-wide v0, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    goto :goto_5
.end method

.method protected final declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/driverMode/service/ch;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lzte/com/cn/driverMode/service/ch;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->i:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/utils/h;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/ch;->q:Z

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ch;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/ch;->c()V

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lzte/com/cn/driverMode/service/ch;->p:J

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPausedStatusInList...province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPausedStatusInList...getCurProvinceDownloadStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPausedStatusInList...ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/ch;->m:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/cg;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCanceledStatusInList...province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCanceledStatusInList...getCurProvinceDownloadStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->c:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCanceledStatusInList...ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/ch;->n:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->f:[Lzte/com/cn/driverMode/service/cg;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/cg;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->a:Lzte/com/cn/driverMode/utils/h;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/utils/h;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCurDownloadProvince...this.downloadProvince="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ch;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ch;->l:Ljava/lang/String;

    return-object v0
.end method
