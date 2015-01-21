.class public abstract Lcom/adchina/android/ads/controllers/BaseController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected A:Ljava/lang/StringBuffer;

.field protected B:Ljava/lang/StringBuffer;

.field protected C:Ljava/lang/StringBuffer;

.field protected D:Ljava/lang/StringBuffer;

.field protected E:Ljava/lang/StringBuffer;

.field protected F:Ljava/lang/StringBuffer;

.field protected G:Ljava/lang/StringBuffer;

.field protected H:Ljava/lang/StringBuffer;

.field protected I:Ljava/lang/StringBuffer;

.field protected J:Z

.field protected K:Z

.field protected L:Landroid/content/Context;

.field protected M:Ljava/lang/StringBuffer;

.field protected N:Ljava/lang/StringBuffer;

.field protected O:Ljava/lang/StringBuffer;

.field protected P:Ljava/lang/StringBuffer;

.field protected Q:Ljava/lang/StringBuffer;

.field protected R:Z

.field protected S:Z

.field protected T:Ljava/util/LinkedList;

.field protected U:Ljava/util/LinkedList;

.field protected V:Ljava/util/LinkedList;

.field protected W:Lcom/adchina/android/ads/controllers/g;

.field protected X:Lcom/adchina/android/ads/r;

.field protected Y:Landroid/os/Handler;

.field protected Z:Lcom/adchina/android/ads/h;

.field private a:I

.field protected aa:Z

.field protected final ab:Ljava/lang/String;

.field protected ac:Z

.field private ad:I

.field protected b:Lcom/adchina/android/ads/p;

.field protected c:Lcom/adchina/android/ads/l;

.field protected d:Ljava/lang/StringBuffer;

.field protected e:Ljava/lang/StringBuffer;

.field protected f:Ljava/lang/StringBuffer;

.field protected g:Ljava/lang/StringBuffer;

.field protected h:Ljava/lang/StringBuffer;

.field protected i:Ljava/lang/StringBuffer;

.field protected j:Ljava/lang/StringBuffer;

.field protected k:Ljava/lang/StringBuffer;

.field protected l:Ljava/lang/StringBuffer;

.field protected m:Ljava/lang/StringBuffer;

.field protected n:Ljava/lang/StringBuffer;

.field protected o:Ljava/lang/StringBuffer;

.field protected p:Ljava/lang/StringBuffer;

.field protected q:Ljava/lang/StringBuffer;

.field protected r:Ljava/lang/StringBuffer;

.field protected s:Ljava/lang/StringBuffer;

.field protected t:Ljava/lang/StringBuffer;

.field protected u:Ljava/lang/StringBuffer;

.field protected v:Ljava/lang/StringBuffer;

.field protected w:Ljava/lang/StringBuffer;

.field protected x:Ljava/lang/StringBuffer;

.field protected y:Ljava/lang/StringBuffer;

.field protected z:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->b:Lcom/adchina/android/ads/p;

    sget-object v0, Lcom/adchina/android/ads/l;->e:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->d:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->f:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->g:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->h:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->i:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->j:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->k:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->l:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->m:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->n:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->o:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->p:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->q:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->r:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->s:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->t:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->u:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->v:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->w:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->x:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->y:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->z:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->A:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->B:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->C:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->D:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->E:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->F:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->G:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->H:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->I:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->J:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->K:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->O:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->P:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->R:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->S:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->T:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->U:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->V:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->X:Lcom/adchina/android/ads/r;

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->aa:Z

    iput v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->a:I

    iput v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->ad:I

    const-string v0, ".time_span."

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->ab:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->ac:Z

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    new-instance v0, Lcom/adchina/android/ads/r;

    invoke-direct {v0, p1}, Lcom/adchina/android/ads/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->X:Lcom/adchina/android/ads/r;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adchina/android/ads/AdManager;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/adchina/android/ads/AdEngine;->initAdEngine(Landroid/content/Context;)Lcom/adchina/android/ads/AdEngine;

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const-string v2, "http://192.168.27.232:9200/lbs.htm"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "type=%s&json=%s&lct=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://amob.acs86.com/lbs.htm"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/adchina/android/ads/controllers/BaseController;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/adchina/android/ads/controllers/BaseController;Lcom/adchina/android/ads/s;)V
    .locals 2

    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->aa:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/controllers/b;

    invoke-direct {v0, p0, p1}, Lcom/adchina/android/ads/controllers/b;-><init>(Lcom/adchina/android/ads/controllers/BaseController;Lcom/adchina/android/ads/s;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/b;->start()V

    invoke-virtual {p1}, Lcom/adchina/android/ads/s;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/adchina/android/ads/s;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/controllers/BaseController;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/adchina/android/ads/controllers/d;

    invoke-direct {v0, p0, p1}, Lcom/adchina/android/ads/controllers/d;-><init>(Lcom/adchina/android/ads/controllers/BaseController;Lcom/adchina/android/ads/s;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/d;->start()V

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/adchina/android/ads/controllers/BaseController;)V
    .locals 5

    const/16 v4, 0xf

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "requestLbs type = 2"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    :goto_2
    :try_start_1
    const-string v0, "rt"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "rt"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/adchina/android/ads/k;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLbsRTJson rt = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_3
    :try_start_2
    const-string v0, "gps"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gps"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->aa:Z

    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->aa:Z

    if-eqz v0, :cond_5

    const-string v0, "\u662f"

    :goto_5
    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "getLbsRTJson\u5f02\u5e38\uff0c\u8bbe\u7f6e\u9ed8\u8ba4\u5237\u65b0\u65f6\u95f4"

    invoke-static {v2}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sput v4, Lcom/adchina/android/ads/k;->i:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "getLbsRTJson\u5f02\u5e38\uff0c\u8bbe\u7f6e\u9ed8\u8ba4\u5237\u65b0\u65f6\u95f4"

    invoke-static {v2}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sput v4, Lcom/adchina/android/ads/k;->i:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->aa:Z

    goto :goto_4

    :cond_5
    const-string v0, "\u4e0d\u652f\u6301\u7b2c\u4e09\u65b9\u670d\u52a1"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adchina/android/ads/controllers/BaseController;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "requestLbs type = 1"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Lcom/adchina/android/ads/controllers/BaseController;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "et"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "et"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "Lbs getLbsJson \u5f02\u5e38"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Lbs getLbsJson \u5f02\u5e38"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Lbs getLbsJson \u5f02\u5e38"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_0

    :try_start_2
    const-string v0, "lon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "lon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/adchina/android/ads/k;->j:D

    :cond_4
    const-string v0, "lat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lcom/adchina/android/ads/k;->k:D

    goto :goto_0

    :cond_5
    const-string v0, "can\'t get lbsJson content from server"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static q()V
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/adchina/android/ads/k;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/adchina/android/ads/AdManager;->setDebugMode(Z)V

    invoke-static {v3}, Lcom/adchina/android/ads/AdManager;->setLogMode(Z)V

    invoke-static {v3}, Lcom/adchina/android/ads/AdManager;->setmLogShow(Z)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [C

    invoke-virtual {v3, v1}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "\r"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v2, v1, v0

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "testurl"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/adchina/android/ads/k;->f:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "bannerAdSpaceId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adchina/android/ads/AdManager;->setAdspaceId(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    const-string v3, "videoPreAdSpaceId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adchina/android/ads/AdManager;->setVideoAdspaceId(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_5
    const-string v3, "fullScreenAdSpaceId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adchina/android/ads/AdManager;->setFullScreenAdspaceId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/adchina/android/ads/controllers/BaseController;->a:I

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->Y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/adchina/android/ads/controllers/g;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/p;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/BaseController;->b:Lcom/adchina/android/ads/p;

    return-void
.end method

.method protected final a(Ljava/io/InputStream;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/adchina/android/ads/controllers/BaseController;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u83b7\u5f97\u670d\u52a1\u5668\u8fd4\u56de\u6a21\u677f\u957f\u5ea6\u4e3a0"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u5f97\u670d\u52a1\u5668\u8fd4\u56de\u6a21\u677f\u957f\u5ea6\u4e3a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->m()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "imgt"

    invoke-static {v0, v1}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->f:Ljava/lang/StringBuffer;

    const-string v2, "cu"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->g:Ljava/lang/StringBuffer;

    const-string v2, "rbu"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->h:Ljava/lang/StringBuffer;

    const-string v2, "itu"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->i:Ljava/lang/StringBuffer;

    const-string v2, "ctu"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->j:Ljava/lang/StringBuffer;

    const-string v2, "fc"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->k:Ljava/lang/StringBuffer;

    const-string v2, "rt"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->o:Ljava/lang/StringBuffer;

    const-string v2, "imgu"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const-string v1, "btn"

    invoke-static {v0, v1}, Lcom/adchina/android/ads/controllers/BaseController;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->q:Ljava/lang/StringBuffer;

    const-string v3, "type"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->r:Ljava/lang/StringBuffer;

    const-string v3, "x"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->s:Ljava/lang/StringBuffer;

    const-string v3, "y"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->t:Ljava/lang/StringBuffer;

    const-string v3, "w"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->u:Ljava/lang/StringBuffer;

    const-string v3, "h"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->v:Ljava/lang/StringBuffer;

    const-string v3, "curl"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->w:Ljava/lang/StringBuffer;

    const-string v3, "down"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->x:Ljava/lang/StringBuffer;

    const-string v3, "smsn"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->y:Ljava/lang/StringBuffer;

    const-string v3, "smsc"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->z:Ljava/lang/StringBuffer;

    const-string v3, "call"

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->E:Ljava/lang/StringBuffer;

    const-string v2, "vdu"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->F:Ljava/lang/StringBuffer;

    const-string v2, "st"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->G:Ljava/lang/StringBuffer;

    const-string v2, "et"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->H:Ljava/lang/StringBuffer;

    const-string v2, "ct"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->I:Ljava/lang/StringBuffer;

    const-string v2, "tsr"

    invoke-static {v0, v2}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "Xml from Adserver:"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "<ac ver=\""

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->d:Ljava/lang/StringBuffer;

    aput-object v2, v1, v5

    const-string v2, "\">"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <type>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</type>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <cu>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</cu>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <rbu>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</rbu>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <itu>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</itu>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <ctu>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</ctu>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <fc>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</fc>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <rt>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</rt>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <sa>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</sa>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <sc>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</sc>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <sptype>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</sptype>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <txt>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</txt>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "    <img type=\""

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\">"

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "</img>"

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "    <video type=\"\"></video>"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "    <btn type=\""

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" x=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->r:Ljava/lang/StringBuffer;

    aput-object v2, v1, v6

    const-string v2, "\" y=\""

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->s:Ljava/lang/StringBuffer;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\" w=\""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->t:Ljava/lang/StringBuffer;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\" h=\""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->u:Ljava/lang/StringBuffer;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\">"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <curl>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</curl>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <down>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->w:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</down>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "    <sms>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->x:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "</sms>"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <call>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</call>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "    </btn>"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "    <fsad>"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <fsurl>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->A:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</fsurl>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <fscurl>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->B:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</fscurl>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <fsimp>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->C:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</fsimp>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "    <fsclk>"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "</fsclk>"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "    </fsad>"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "</ac>"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/adchina/android/ads/l;->a:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ihtml5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/adchina/android/ads/l;->e:Lcom/adchina/android/ads/l;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->c:Lcom/adchina/android/ads/l;

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/adchina/android/ads/controllers/AdViewController;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/controllers/AdViewController;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "browserurl"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "istransparent"

    iget-boolean v2, p2, Lcom/adchina/android/ads/controllers/AdViewController;->ac:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isbanner"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "downloadtrack"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/BaseController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "12"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, ",0,0,0"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    const-class v2, Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to sendSms, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/adchina/android/ads/controllers/BaseController;->ad:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v4, v0, [C

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    const-string v2, "adchinaFC.fc"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exceptions in getFcParams 1, err = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "Exceptions in getFcParams 2, err = "

    aput-object v4, v3, v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "Exceptions in getFcParams 2, err = "

    aput-object v4, v3, v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "Exceptions in getFcParams 2, err = "

    aput-object v4, v3, v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAdspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "browserurl"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "downloadtrack"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/BaseController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "12"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ",0,0,0"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    const-class v2, Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to makeCall, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Lcom/adchina/android/ads/h;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Lcom/adchina/android/ads/h;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public final j()Lcom/adchina/android/ads/h;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->a:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->ad:I

    return v0
.end method

.method protected m()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->T:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->U:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->r:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->w:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->x:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->A:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->B:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->C:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->E:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->F:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->G:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->H:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->I:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->ac:Z

    return-void
.end method

.method protected final n()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Android "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "&ma="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "2.6.4"

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "utf-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/adchina/android/ads/controllers/BaseController;->P:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget-object v6, p0, Lcom/adchina/android/ads/controllers/BaseController;->O:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getResolution()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x5

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getGender()Lcom/adchina/android/ads/o;

    move-result-object v1

    sget-object v7, Lcom/adchina/android/ads/o;->a:Lcom/adchina/android/ads/o;

    if-ne v1, v7, :cond_0

    const-string v1, "2"

    :goto_0
    aput-object v1, v5, v6

    const/4 v1, 0x6

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getBirthday()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "Failed to getMaParams, err = "

    aput-object v3, v2, v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v2, "AdChinaError"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final o()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "FC:"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->e()V

    const-string v1, "pv=1&sp=%s,0,0,0,0,1,1,10&ec=utf-8&cb=%d&fc=%s&ts=1262152690.23&stt=4&mpid=100&ut=%s&muid=%s&g=4&an=%s&ct=%s&bn=%s&pad=0&lon=%s&lat=%s&aw=%s&ah=%s&net=%s&mnc=%s&tl=json&at=0"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    aput-object v3, v2, v5

    invoke-static {}, Lcom/adchina/android/ads/Utils;->GetRandomNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAppName()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getContentTargeting()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    sget-wide v3, Lcom/adchina/android/ads/k;->j:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    sget-wide v3, Lcom/adchina/android/ads/k;->k:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xb

    iget v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->ad:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xd

    sget-object v3, Lcom/adchina/android/ads/AdManager;->h:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final p()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "FC:"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->e()V

    const-string v1, "pv=1&sp=%s,0,0,0,0,1,1,10&ec=utf-8&cb=%d&fc=%s&ts=1262152690.23&stt=4&mpid=100&ut=%s&muid=%s&g=4&an=%s&ct=%s&bn=%s&pad=0&lon=%s&lat=%s&aw=%s&ah=%s&net=%s&mnc=%s&tl=json&at=0"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->Q:Ljava/lang/StringBuffer;

    aput-object v3, v2, v5

    invoke-static {}, Lcom/adchina/android/ads/Utils;->GetRandomNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->N:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->M:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAppName()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getContentTargeting()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    sget-wide v3, Lcom/adchina/android/ads/k;->j:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    sget-wide v3, Lcom/adchina/android/ads/k;->k:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xb

    iget v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->ad:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xd

    sget-object v3, Lcom/adchina/android/ads/AdManager;->h:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()V
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "time"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "begin start time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->J:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->b:Lcom/adchina/android/ads/p;

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/adchina/android/ads/controllers/BaseController;->K:Z

    iput-boolean v5, p0, Lcom/adchina/android/ads/controllers/BaseController;->R:Z

    iput-boolean v5, p0, Lcom/adchina/android/ads/controllers/BaseController;->S:Z

    new-instance v2, Lcom/adchina/android/ads/controllers/g;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/controllers/g;-><init>(Lcom/adchina/android/ads/controllers/BaseController;)V

    iput-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->W:Lcom/adchina/android/ads/controllers/g;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->W:Lcom/adchina/android/ads/controllers/g;

    invoke-virtual {v2}, Lcom/adchina/android/ads/controllers/g;->start()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->J:Z

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->isEnableLbs()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/adchina/android/ads/Utils;->checkedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/adchina/android/ads/k;->g:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/adchina/android/ads/k;->h:Z

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lcom/adchina/android/ads/controllers/f;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/controllers/f;-><init>(Lcom/adchina/android/ads/controllers/BaseController;)V

    sput-object v2, Lcom/adchina/android/ads/k;->g:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_2
    sget-object v2, Lcom/adchina/android/ads/k;->l:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/adchina/android/ads/k;->m:Z

    if-nez v2, :cond_4

    :cond_3
    new-instance v2, Lcom/adchina/android/ads/i;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/adchina/android/ads/i;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/adchina/android/ads/k;->l:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "time"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "begin end time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "time"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "betwen time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final s()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/adchina/android/ads/controllers/BaseController;->K:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->J:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->R:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/BaseController;->S:Z

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->W:Lcom/adchina/android/ads/controllers/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->W:Lcom/adchina/android/ads/controllers/g;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/g;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->W:Lcom/adchina/android/ads/controllers/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adchina/android/ads/controllers/g;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->W:Lcom/adchina/android/ads/controllers/g;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Lcom/adchina/android/ads/h;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/BaseController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Lcom/adchina/android/ads/h;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/BaseController;->i()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
