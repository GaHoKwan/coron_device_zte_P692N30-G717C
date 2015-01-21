.class Lcom/hf/ad/WQMobileAD$1;
.super Landroid/os/AsyncTask;
.source "WQMobileAD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/ad/WQMobileAD;->load(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/ad/WQMobileAD;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hf/ad/WQMobileAD;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/ad/WQMobileAD$1;->this$0:Lcom/hf/ad/WQMobileAD;

    iput-object p2, p0, Lcom/hf/ad/WQMobileAD$1;->val$context:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .parameter "params"

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/ad/WQMobileAD$1;->this$0:Lcom/hf/ad/WQMobileAD;

    #calls: Lcom/hf/ad/WQMobileAD;->getClient()Lorg/apache/http/client/HttpClient;
    invoke-static {v15}, Lcom/hf/ad/WQMobileAD;->access$0(Lcom/hf/ad/WQMobileAD;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 59
    .local v2, client:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/ad/WQMobileAD$1;->val$context:Landroid/content/Context;

    invoke-static {v15}, Lcom/hf/utils/ADUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, mac:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/ad/WQMobileAD$1;->val$context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, pkg:Ljava/lang/String;
    sget-boolean v15, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v15, :cond_0

    .line 62
    const-string v15, "WQMobileAD"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "mac = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 65
    const/4 v15, 0x0

    .line 101
    :goto_0
    return-object v15

    .line 68
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hf/ad/WQMobileAD$1;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 69
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 70
    .local v8, manager:Landroid/view/WindowManager;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v6, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    .local v6, height:I
    iget v14, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 75
    .local v14, width:I
    sget-boolean v15, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v15, :cond_2

    .line 76
    const-string v15, "WQMobileAD"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "height = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; width = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/hf/utils/SHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, dev:Ljava/lang/String;
    const-string v15, "http://s2s.adwaken.com:8090/wqs2s_test/getad?dev=%s&key=%s&as=%s&pf=android&pkg=%s&sr=%s"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/16 v17, 0x1

    const-string v18, "1872145507d8406f9b6fe1bc8b96d287"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "b633647a66ba4a6aa337169da1139a41"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    aput-object v10, v16, v17

    const/16 v17, 0x4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, uri:Ljava/lang/String;
    sget-boolean v15, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v15, :cond_3

    .line 82
    const-string v15, "WQMobileAD"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 88
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 89
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, result:Ljava/lang/String;
    const-string v15, "WQMobileAD"

    invoke-static {v15, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v4

    .line 96
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v4

    .line 99
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
