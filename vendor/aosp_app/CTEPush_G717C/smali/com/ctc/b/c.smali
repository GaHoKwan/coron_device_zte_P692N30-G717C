.class public final Lcom/ctc/b/c;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "123456"

    sput-object v0, Lcom/ctc/b/c;->a:Ljava/lang/String;

    const-string v0, "123456"

    sput-object v0, Lcom/ctc/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ctc/b/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-string v0, ""

    sput-object v0, Lcom/ctc/b/c;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/ctc/b/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILcom/ctc/a/a;Lcom/ctc/c/n;Landroid/os/Handler;)Z
    .locals 18

    const/4 v9, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    long-to-int v5, v2

    iput v5, v4, Landroid/os/Message;->arg1:I

    long-to-int v5, v2

    iput v5, v4, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "avaliable="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filesize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->h()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->h()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    const-string v6, "https://phone.189.cn:8443/iface/push"

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "downAPP---myUrl:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    const-string v11, "X509"

    invoke-static {v11}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v11

    const-string v12, "X509"

    invoke-static {v12}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v12

    const-string v13, "BKS"

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    const-string v14, "BKS"

    invoke-static {v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f04

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v15

    sget-object v16, Lcom/ctc/b/c;->a:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v15}, Ljava/io/InputStream;->reset()V

    sget-object v16, Lcom/ctc/b/c;->b:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    sget-object v15, Lcom/ctc/b/c;->a:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v12, v14}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v11}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v11

    invoke-virtual {v12}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v6, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v11}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16

    :try_start_2
    const-string v3, "Connection"

    const-string v11, "Close"

    invoke-virtual {v2, v3, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v3, Lcom/ctc/b/d;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/ctc/b/d;-><init>(Lcom/ctc/b/c;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    if-eqz p1, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "VSize"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-nez v5, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17

    :try_start_3
    sget-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v3, :cond_4

    const-string v3, "pushAppJson"

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "down_isall"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v6, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "delele file fail: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downAPP() Connection timed out: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v4, Lcom/ctc/c/g;->l:Z

    if-eqz v4, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/ctc/c/g;->m:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/ctc/c/g;->l:Z

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downAPP() newrange on error: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downAPP() Download\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk  success!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downAPP() Download\uff1a"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :cond_8
    :try_start_6
    const-string v3, "Content-Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "-"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v3, "token"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v6, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-static {v6, v3, v11}, Lcom/ctc/b/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    new-instance v11, Ljava/io/ObjectOutputStream;

    invoke-direct {v11, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v11

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "con.getResponseCode():"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "---fileSize:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v6, 0x1

    if-gt v11, v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Download\uff1a"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ".apk  failed,code="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",fileSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",The current breakpoint:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v6}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_17

    :try_start_7
    sget-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v3, :cond_a

    const-string v3, "pushAppJson"

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "down_isall"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v6, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "delele file fail: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downAPP() Connection timed out: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v4, Lcom/ctc/c/g;->l:Z

    if-eqz v4, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/ctc/c/g;->m:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/ctc/c/g;->l:Z

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downAPP() newrange on error: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downAPP() Download\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk  success!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downAPP() Download\uff1a"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_4

    :cond_e
    if-nez p1, :cond_3c

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "VSize"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v11}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "VSize"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17

    move-result v3

    add-int/lit8 v6, v3, -0x1

    :goto_5
    :try_start_b
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_f
    new-instance v5, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ".apk"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_18

    :try_start_c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v12, v11

    cmp-long v3, v3, v12

    if-nez v3, :cond_15

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_19

    const/4 v2, 0x0

    move-object v3, v2

    :goto_6
    :try_start_d
    sget-boolean v2, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v2, :cond_11

    const-string v2, "pushAppJson"

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "down_isall"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :try_start_e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v5, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v2

    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delele file fail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Connection timed out: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v4, Lcom/ctc/c/g;->l:Z

    if-eqz v4, :cond_12

    const/4 v2, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/ctc/c/g;->m:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/ctc/c/g;->l:Z

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() newrange on error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "downAPP() Download\uff1a"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".apk  success!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_7
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_13
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Download\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_7

    :catch_6
    move-exception v2

    goto :goto_8

    :cond_15
    const/16 v3, 0x2000

    :try_start_10
    new-array v12, v3, [B

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v4, v5, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19

    :try_start_11
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1a

    move-result-object v7

    const/4 v3, 0x0

    :goto_9
    :try_start_12
    invoke-virtual {v7, v12}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_18

    :cond_16
    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1b

    const/4 v7, 0x0

    :try_start_13
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1c

    const/4 v4, 0x0

    :try_start_14
    sget-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/ctc/c/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    const-string v3, "pushAppJson"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v8, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v3, 0x0

    move v8, v3

    :goto_a
    if-lt v8, v13, :cond_1b

    :goto_b
    invoke-static {v11}, Lcom/ctc/b/e;->a(Lcom/ctc/a/c;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "pushAppJson"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    sget-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v3, :cond_21

    const-string v3, "pushAppJson"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "down_isall"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    :try_start_15
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v11, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    :try_start_16
    sget-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v3, :cond_1d

    const-string v3, "pushAppJson"

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "down_isall"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    :try_start_17
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v5, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_18
    :try_start_18
    sget-boolean v13, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    if-nez v13, :cond_16

    sget-boolean v13, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-nez v13, :cond_16

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int p1, p1, v8

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "start: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/4 v13, 0x1

    iput v13, v8, Landroid/os/Message;->what:I

    move/from16 v0, p1

    iput v0, v8, Landroid/os/Message;->arg1:I

    iput v6, v8, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_19

    mul-int/lit8 v13, p1, 0x64

    div-int/2addr v13, v11

    add-int/lit8 v13, v13, -0x2

    if-lt v13, v3, :cond_1a

    :cond_19
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_1a
    sget-boolean v8, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    if-nez v8, :cond_16

    sget-boolean v8, Lcom/ctc/epush/CancelDialogActivity;->b:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1b

    if-nez v8, :cond_16

    goto/16 :goto_9

    :cond_1b
    :try_start_19
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ctc/a/a;

    invoke-virtual {v3}, Lcom/ctc/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v7

    move-object v7, v2

    move-object/from16 v2, v17

    :goto_c
    :try_start_1a
    sget-boolean v8, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v8, :cond_28

    const-string v8, "pushAppJson"

    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v11}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "down_isall"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v11}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v8, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v12, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v11, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    :try_start_1c
    sget-boolean v2, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v2, :cond_22

    const-string v2, "pushAppJson"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "down_isall"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v8, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1c
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_a

    :catch_8
    move-exception v3

    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delele file fail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Connection timed out: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v4, Lcom/ctc/c/g;->l:Z

    if-eqz v4, :cond_1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/ctc/c/g;->m:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/ctc/c/g;->l:Z

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() newrange on error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downAPP() Download\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk  success!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_d
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1f
    :goto_e
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Download\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto :goto_d

    :catch_9
    move-exception v2

    goto :goto_e

    :catch_a
    move-exception v3

    :try_start_1f
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "delele file fail: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7

    :cond_21
    :try_start_20
    sget-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v3, :cond_37

    const-string v3, "pushAppJson"

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "down_isall"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_12

    :try_start_21
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v5, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_b
    move-exception v2

    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "delele file fail: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "downAPP() Connection timed out: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v3, Lcom/ctc/c/g;->l:Z

    if-eqz v3, :cond_23

    const/4 v2, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/ctc/c/g;->m:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/ctc/c/g;->l:Z

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "downAPP() newrange on error: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downAPP() Download\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk  success!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_f
    if-eqz v6, :cond_24

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_24
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_25
    if-eqz v7, :cond_26

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_26
    :goto_10
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "downAPP() Download\uff1a"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c

    goto :goto_f

    :catch_c
    move-exception v2

    goto :goto_10

    :catch_d
    move-exception v8

    :try_start_23
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "delele file fail: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "download Exception :"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "AppName: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "  start: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    const-string v8, "Connection timed out"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29

    const-string v8, "Read timed out"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ctc/c/g;->l:Z

    const-string v2, "down_isall"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "com.ctc.epush.DownloadException_FLAG"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2a
    const-string v2, "com.ctc.epush.DownloadException_FLAG"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :try_start_24
    sget-boolean v2, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v2, :cond_2b

    const-string v2, "pushAppJson"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "down_isall"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v8}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_14

    :try_start_25
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v8, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_e
    move-exception v2

    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "delele file fail: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "downAPP() Connection timed out: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v3, Lcom/ctc/c/g;->l:Z

    if-eqz v3, :cond_2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/ctc/c/g;->m:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/ctc/c/g;->l:Z

    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "downAPP() newrange on error: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    const/4 v2, 0x1

    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downAPP() Download\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk  success!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_11
    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_2d
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_2e
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_15

    :cond_2f
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isok in downapp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ctc/c/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    :try_start_28
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "downAPP() Download\uff1a"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    move v2, v9

    goto :goto_11

    :catchall_0
    move-exception v2

    :goto_13
    :try_start_29
    sget-boolean v6, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v6, :cond_31

    const-string v6, "pushAppJson"

    const-string v9, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v9}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "down_isall"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v9}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v6, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v6}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    const-class v9, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ctc/b/c;->d:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_f
    move-exception v4

    :try_start_2b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "delele file fail: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v4}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "downAPP() Connection timed out: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v6, Lcom/ctc/c/g;->l:Z

    if-eqz v6, :cond_32

    const/4 v4, 0x0

    const/4 v6, 0x1

    sput-boolean v6, Lcom/ctc/c/g;->m:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/ctc/c/g;->l:Z

    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "downAPP() newrange on error: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v6, -0x1

    if-ne v4, v6, :cond_36

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Download\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk  success!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_14
    if-eqz v8, :cond_33

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_33
    if-eqz v7, :cond_34

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_34
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_10

    :cond_35
    :goto_15
    throw v2

    :cond_36
    :try_start_2c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "downAPP() Download\uff1a"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_10

    goto :goto_14

    :catch_10
    move-exception v3

    goto :goto_15

    :catch_11
    move-exception v3

    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delele file fail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_37
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Connection timed out: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/ctc/c/g;->l:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v4, Lcom/ctc/c/g;->l:Z

    if-eqz v4, :cond_38

    const/4 v3, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/ctc/c/g;->m:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/ctc/c/g;->l:Z

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() newrange on error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_39

    const/4 v9, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downAPP() Download\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk  success!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_12

    move v3, v9

    :goto_16
    if-eqz v2, :cond_3a

    :try_start_2e
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_13

    move v2, v3

    goto/16 :goto_12

    :cond_39
    :try_start_2f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downAPP() Download\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk  Download Exception .The current breakpoint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_12

    move v3, v9

    goto :goto_16

    :catch_12
    move-exception v2

    move v2, v9

    goto/16 :goto_12

    :catch_13
    move-exception v2

    move v2, v3

    goto/16 :goto_12

    :catchall_1
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_2
    move-exception v3

    move v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_3
    move-exception v3

    move-object v4, v5

    move v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_4
    move-exception v3

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_5
    move-exception v3

    move-object v8, v7

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_6
    move-exception v3

    move-object v8, v7

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_7
    move-exception v3

    move-object v8, v7

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_13

    :catchall_8
    move-exception v2

    move-object v8, v6

    move/from16 v17, v4

    move-object v4, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, v17

    goto/16 :goto_13

    :catch_14
    move-exception v2

    move v2, v9

    goto/16 :goto_12

    :catch_15
    move-exception v3

    goto/16 :goto_12

    :catch_16
    move-exception v2

    move-object v6, v8

    move/from16 v17, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v4

    move/from16 v4, v17

    goto/16 :goto_c

    :catch_17
    move-exception v3

    move-object v6, v8

    move-object/from16 v17, v4

    move v4, v5

    move-object v5, v7

    move-object v7, v2

    move-object v2, v3

    move-object/from16 v3, v17

    goto/16 :goto_c

    :catch_18
    move-exception v3

    move-object v5, v7

    move-object v7, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    move-object v6, v8

    goto/16 :goto_c

    :catch_19
    move-exception v3

    move v4, v6

    move-object v6, v8

    move-object/from16 v17, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_c

    :catch_1a
    move-exception v3

    move-object v7, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v8

    goto/16 :goto_c

    :catch_1b
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_c

    :catch_1c
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_c

    :cond_3a
    move v2, v3

    goto/16 :goto_12

    :cond_3b
    move-object v3, v2

    goto/16 :goto_6

    :cond_3c
    move v6, v5

    goto/16 :goto_5
.end method
