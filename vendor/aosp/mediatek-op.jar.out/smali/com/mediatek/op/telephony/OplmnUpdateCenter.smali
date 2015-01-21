.class public Lcom/mediatek/op/telephony/OplmnUpdateCenter;
.super Landroid/os/Handler;
.source "OplmnUpdateCenter.java"


# static fields
.field private static final ACTION_OPLMN_UPDATE:Ljava/lang/String; = "com.mediatek.intent.action.ACTION_OPLMN_UPDATE"

.field private static final EVENT_GET_OPLMN_VERSION_DONE:I = 0x3

.field private static final EVENT_RETRY_OPLMN_UPDATE:I = 0x2

.field private static final EVENT_SEND_OPLMN_LIST_DONE:I = 0x1

.field private static final KEY_OPLMN_UPDATE_TIME:Ljava/lang/String; = "com.mediatek.oplmn.update.time"

.field private static final KEY_OPLMN_UPDATE_VERSION:Ljava/lang/String; = "com.mediatek.oplmn.update.version"

.field private static final MILLISECONDS_TO_SECOND:J = 0xea60L

.field private static final PREF_NW_OPLMN_INFO:Ljava/lang/String; = "mediatek_oplmn_info"

.field private static final PROPERTY_OPLMN_UPDATE_URL:Ljava/lang/String; = "https://roam.radiosky.com.cn/cdma/ud/index"

.field private static final UPDATE_INTERVAL:J = 0x337f9800L

.field private static final UPDATE_INTERVAL_DELAY:J = 0xea60L


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mOplmnInfo:Ljava/lang/String;

.field private mOplmnUpdateRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSslContext:Ljavax/net/ssl/SSLContext;

.field private mUrl:Ljava/net/URL;

.field private mWaitingForNet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;-><init>(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)V

    iput-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnUpdateRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;

    invoke-direct {v0, p0}, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;-><init>(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)V

    iput-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLContext;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljava/net/URL;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->sendOplmnFile(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mWaitingForNet:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mWaitingForNet:Z

    return p1
.end method

.method private getNextUpdateTime()J
    .locals 9

    .prologue
    const-wide/32 v7, 0x337f9800

    .line 180
    iget-object v3, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "com.mediatek.oplmn.update.time"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, time:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 182
    .local v0, lastTime:J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 185
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastUpdateTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "yyyy-MM-dd, kk:mm:ss"

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    .line 188
    add-long v3, v0, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    .line 191
    :goto_0
    return-wide v3

    :cond_1
    add-long v3, v0, v7

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 203
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OplmnUpdater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private sendOplmnFile(Ljava/lang/String;[B)V
    .locals 4
    .parameter "version"
    .parameter "cacheOplmn"

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-static {p1, p2}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->parseOplmnAsModemFormat(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnInfo:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnInfo:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOplmn(Ljava/lang/String;Landroid/os/Message;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;

    iget-object v2, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mUrl:Ljava/net/URL;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->respondResult(Landroid/content/Context;Ljavax/net/ssl/SSLContext;Ljava/net/URL;Ljava/lang/String;Z)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 145
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const-string v4, "handle EVENT_SEND_OPLMN_LIST_DONE"

    invoke-direct {p0, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 150
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 151
    const-string v4, "Send oplmn file fail"

    invoke-direct {p0, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string v4, "Send oplmn file success, delete the oplmn file"

    invoke-direct {p0, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getOplmnFile()Ljava/io/File;

    move-result-object v2

    .line 155
    .local v2, oplmnFile:Ljava/io/File;
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 161
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #oplmnFile:Ljava/io/File;
    :pswitch_1
    const-string v4, "handle EVENT_RETRY_OPLMN_UPDATE"

    invoke-direct {p0, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v4, :cond_0

    .line 165
    invoke-static {}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getOplmnFile()Ljava/io/File;

    move-result-object v2

    .line 166
    .restart local v2       #oplmnFile:Ljava/io/File;
    if-eqz v2, :cond_0

    .line 167
    invoke-static {v2}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->readOplmnFile(Ljava/io/File;)[B

    move-result-object v1

    .line 168
    .local v1, cacheOplmn:[B
    if-eqz v1, :cond_0

    .line 169
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "com.mediatek.oplmn.update.version"

    const-string v6, "0.0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, version:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->sendOplmnFile(Ljava/lang/String;[B)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startOplmnUpdater(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 11
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    .line 115
    check-cast p2, Lcom/android/internal/telephony/CommandsInterface;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x2

    const/4 v10, 0x0

    invoke-interface {v4, p0, v5, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    const-string v5, "mediatek_oplmn_info"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 119
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 122
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "https://roam.radiosky.com.cn/cdma/ud/index"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->getNextUpdateTime()J

    move-result-wide v2

    .line 129
    .local v2, nextUpdateTime:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nextUpdateTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "yyyy-MM-dd, kk:mm:ss"

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    .line 132
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.intent.action.ACTION_OPLMN_UPDATE"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 138
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v4, "com.mediatek.intent.action.ACTION_OPLMN_UPDATE"

    invoke-direct {v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v9, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v1, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 140
    .local v6, sender:Landroid/app/PendingIntent;
    const-wide/32 v4, 0x337f9800

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 141
    return-void

    .line 123
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #nextUpdateTime:J
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v9           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 124
    .local v7, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialize the url fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
