.class public Lcom/zte/feedback/sdk/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "feedback information"

.field private static final KEY_SDK_VERSION:Ljava/lang/String; = "sdkVer"

.field private static final MAX_RETRY_TIME:I = 0x3

.field private static final SDK_VERSION:Ljava/lang/String; = "2.0.5"


# instance fields
.field private final PORTAL_URL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isConnected:Z

.field private isbinded:Z

.field private myService:Lorg/zx/AuthComp/IMyService;

.field private openurl:Ljava/lang/String;

.field private retryTime:I

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "http://cloud.ztedevice.com/feedback/"

    iput-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager;->PORTAL_URL:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;

    .line 33
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 34
    iput-boolean v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z

    .line 35
    iput-boolean v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    .line 36
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->openurl:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->retryTime:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/feedback/sdk/FeedbackManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "http://cloud.ztedevice.com/feedback/"

    iput-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager;->PORTAL_URL:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;

    .line 33
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 34
    iput-boolean v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z

    .line 35
    iput-boolean v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    .line 36
    iput-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->openurl:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->retryTime:I

    .line 48
    iput-object p1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    .line 50
    if-nez p2, :cond_0

    .line 51
    const-string v0, "http://cloud.ztedevice.com/feedback/"

    iput-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager;->openurl:Ljava/lang/String;

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    iput-object p2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->openurl:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zte/feedback/sdk/FeedbackManager;Lorg/zx/AuthComp/IMyService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;

    return-void
.end method

.method static synthetic access$1(Lcom/zte/feedback/sdk/FeedbackManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z

    return-void
.end method

.method static synthetic access$2(Lcom/zte/feedback/sdk/FeedbackManager;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->setAccount()V

    return-void
.end method

.method private bindAccountService()V
    .locals 4

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->initServiceConnection()V

    .line 77
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 78
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindAccountService success? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private delayFeedback()V
    .locals 4

    .prologue
    .line 289
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 291
    .local v1, timer:Ljava/util/Timer;
    new-instance v0, Lcom/zte/feedback/sdk/FeedbackManager$2;

    invoke-direct {v0, p0}, Lcom/zte/feedback/sdk/FeedbackManager$2;-><init>(Lcom/zte/feedback/sdk/FeedbackManager;)V

    .line 298
    .local v0, task:Ljava/util/TimerTask;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 299
    return-void
.end method

.method private getInput(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 11
    .parameter "con"

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, data:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 263
    .local v8, reqInputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 264
    .local v5, inputReader:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 266
    .local v0, bufReader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 267
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v6, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 268
    .end local v5           #inputReader:Ljava/io/InputStreamReader;
    .local v6, inputReader:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 269
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .local v1, bufReader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v9, 0x200

    invoke-direct {v3, v9}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 270
    .end local v2           #data:Ljava/lang/StringBuffer;
    .local v3, data:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 271
    .local v7, line:Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 274
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 275
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #inputReader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 285
    .end local v3           #data:Ljava/lang/StringBuffer;
    .end local v7           #line:Ljava/lang/String;
    .restart local v2       #data:Ljava/lang/StringBuffer;
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    return-object v9

    .line 272
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .end local v2           #data:Ljava/lang/StringBuffer;
    .end local v5           #inputReader:Ljava/io/InputStreamReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #data:Ljava/lang/StringBuffer;
    .restart local v6       #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #line:Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v4

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #inputReader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 278
    .end local v3           #data:Ljava/lang/StringBuffer;
    .end local v7           #line:Ljava/lang/String;
    .restart local v2       #data:Ljava/lang/StringBuffer;
    .local v4, e:Ljava/lang/Exception;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getInput() exception:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 280
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 281
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 282
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 283
    :catch_1
    move-exception v9

    goto :goto_1

    .line 285
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 277
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v5           #inputReader:Ljava/io/InputStreamReader;
    .restart local v6       #inputReader:Ljava/io/InputStreamReader;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6           #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .end local v5           #inputReader:Ljava/io/InputStreamReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v6       #inputReader:Ljava/io/InputStreamReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method private initServiceConnection()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/zte/feedback/sdk/FeedbackManager$1;

    invoke-direct {v0, p0}, Lcom/zte/feedback/sdk/FeedbackManager$1;-><init>(Lcom/zte/feedback/sdk/FeedbackManager;)V

    iput-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 73
    return-void
.end method

.method private setAccount()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 181
    :try_start_0
    iget-object v6, p0, Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v6}, Lorg/zx/AuthComp/IMyService;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, usrStr:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 183
    const-string v6, ""

    invoke-static {v6}, Lcom/zte/feedback/sdk/ClientInfoReader;->setAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v5           #usrStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 187
    .restart local v5       #usrStr:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .local v4, usrObject:Lorg/json/JSONObject;
    const-string v6, "mobile"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "mobile"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, mobile:Ljava/lang/String;
    :goto_1
    const-string v6, "email"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "email"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, email:Ljava/lang/String;
    :goto_2
    const-string v6, "uid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "uid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, uid:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_4

    .end local v2           #mobile:Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Lcom/zte/feedback/sdk/ClientInfoReader;->setAccount(Ljava/lang/String;)V

    .line 192
    invoke-static {v3}, Lcom/zte/feedback/sdk/ClientInfoReader;->setUid(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #uid:Ljava/lang/String;
    .end local v4           #usrObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 196
    .end local v0           #e:Lorg/json/JSONException;
    .end local v5           #usrStr:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #usrObject:Lorg/json/JSONObject;
    .restart local v5       #usrStr:Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 188
    goto :goto_1

    .restart local v2       #mobile:Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 189
    goto :goto_2

    .restart local v1       #email:Ljava/lang/String;
    .restart local v3       #uid:Ljava/lang/String;
    :cond_4
    move-object v2, v1

    .line 191
    goto :goto_3
.end method

.method private startAndroidBrowser(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private startOthersBrowser(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method private startUmbBrowser(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.ume.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method private unBindAccountService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    const-string v1, "unBindAccountService"

    invoke-static {v1}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/feedback/sdk/FeedbackManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iput-object v4, p0, Lcom/zte/feedback/sdk/FeedbackManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 93
    iput-object v4, p0, Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;

    .line 94
    iput-boolean v3, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z

    .line 95
    iput-boolean v3, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    .line 96
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unBindAccountService exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public feedback()V
    .locals 7

    .prologue
    .line 102
    iget-boolean v5, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    if-nez v5, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->bindAccountService()V

    .line 106
    :cond_0
    iget-boolean v5, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z

    if-nez v5, :cond_1

    .line 107
    const-string v5, "feedback() account service isn\'t connected! 2"

    invoke-static {v5}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->delayFeedback()V

    .line 133
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zte/feedback/sdk/FeedbackManager;->openurl:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?clientinfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->getClientinfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, fullUrl:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fullUrl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 114
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 117
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/zte/feedback/sdk/FeedbackManager;->startUmbBrowser(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->unBindAccountService()V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "start ume browser to view the web page failed."

    invoke-static {v5, v0}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    :try_start_1
    invoke-direct {p0, v4}, Lcom/zte/feedback/sdk/FeedbackManager;->startAndroidBrowser(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "start android browser to view the web page failed."

    invoke-static {v5, v1}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    :try_start_2
    invoke-direct {p0, v4}, Lcom/zte/feedback/sdk/FeedbackManager;->startOthersBrowser(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 126
    :catch_2
    move-exception v2

    .line 127
    .local v2, exx:Ljava/lang/Exception;
    const-string v5, "start any browser to view the web page failed."

    invoke-static {v5, v2}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getClientinfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, clientinfo:Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/zte/feedback/sdk/ClientInfoReader;

    iget-object v5, p0, Lcom/zte/feedback/sdk/FeedbackManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/zte/feedback/sdk/ClientInfoReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/zte/feedback/sdk/ClientInfoReader;->toJSONString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, originStr:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v4, "sdkVer"

    const-string v5, "2.0.5"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "before encrypt str = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 172
    const-string v4, "feedback information"

    invoke-static {v3, v4}, Lcom/zte/feedback/sdk/DESCodec;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #originStr:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clientinfo==null exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMyNewReplyCount()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 208
    iget-boolean v8, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    if-nez v8, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->bindAccountService()V

    .line 212
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isbinded:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z

    if-nez v8, :cond_1

    iget v8, p0, Lcom/zte/feedback/sdk/FeedbackManager;->retryTime:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_4

    .line 220
    :cond_1
    iput v10, p0, Lcom/zte/feedback/sdk/FeedbackManager;->retryTime:I

    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, con:Ljava/net/HttpURLConnection;
    const/4 v3, -0x1

    .line 224
    .local v3, count:I
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/zte/feedback/sdk/FeedbackManager;->openurl:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "do?action=getMyNewReplyCount&clientinfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->getClientinfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, actualUrl:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getNewMessageCount() actualUrl:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 228
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 229
    .local v6, httpUrl:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 230
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 231
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 232
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 233
    const-string v8, "Content-type"

    const-string v9, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 238
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 239
    .local v7, repCode:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getNewMessageCount() repCode"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 240
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 241
    invoke-direct {p0, v2}, Lcom/zte/feedback/sdk/FeedbackManager;->getInput(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, entity:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getNewMessageCount() Entity:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 251
    .end local v5           #entity:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    .end local v6           #httpUrl:Ljava/net/URL;
    .end local v7           #repCode:I
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/zte/feedback/sdk/FeedbackManager;->unBindAccountService()V

    .line 257
    return v3

    .line 215
    .end local v1           #actualUrl:Ljava/lang/String;
    .end local v2           #con:Ljava/net/HttpURLConnection;
    .end local v3           #count:I
    :cond_4
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :goto_2
    iget v8, p0, Lcom/zte/feedback/sdk/FeedbackManager;->retryTime:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/zte/feedback/sdk/FeedbackManager;->retryTime:I

    goto/16 :goto_0

    .line 246
    .restart local v1       #actualUrl:Ljava/lang/String;
    .restart local v2       #con:Ljava/net/HttpURLConnection;
    .restart local v3       #count:I
    :catch_0
    move-exception v4

    .line 247
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getNewMessageCount() exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 250
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 251
    if-eqz v2, :cond_5

    .line 252
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 254
    :cond_5
    throw v8

    .line 216
    .end local v1           #actualUrl:Ljava/lang/String;
    .end local v2           #con:Ljava/net/HttpURLConnection;
    .end local v3           #count:I
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string v0, "2.0.5"

    return-object v0
.end method
