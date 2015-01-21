.class public final Lzte/com/cn/driverMode/service/DMAsrTestEngine;
.super Lzte/com/cn/driverMode/service/l;


# static fields
.field protected static c:Lzte/com/cn/driverMode/service/DMAsrTestEngine;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected d:Lzte/com/cn/driverMode/service/DMApplication;

.field protected e:Lzte/com/cn/driverMode/service/DMService;

.field protected f:Landroid/content/Context;

.field protected g:Lzte/com/cn/driverMode/service/bv;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->c:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    return-void
.end method

.method private constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 3

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/l;-><init>()V

    const-string v0, "main_screen"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->a:Ljava/lang/String;

    const-string v0, "main_screen"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->b:Ljava/lang/String;

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->e:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->e:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->e:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->f:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;-><init>(Lzte/com/cn/driverMode/service/DMAsrTestEngine;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->k:Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.TestAsrResult"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->f:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->k:Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Lzte/com/cn/driverMode/service/DMService;)Lzte/com/cn/driverMode/service/DMAsrTestEngine;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->c:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/DMAsrTestEngine;-><init>(Lzte/com/cn/driverMode/service/DMService;)V

    sput-object v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->c:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->c:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 4

    const-string v0, "DMAsrTestEngine"

    const-string v1, "loadAsrGrammar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1007

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "DMAsrTestEngine"

    const-string v1, "setCurScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->a:Ljava/lang/String;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->b:Ljava/lang/String;

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->a:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "DMAsrTestEngine"

    const-string v1, "startWakeUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->i:Z

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->j:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->f:Landroid/content/Context;

    const-string v1, "startWakeUp"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3
.end method

.method public final a(Ljava/util/ArrayList;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lzte/com/cn/driverMode/service/bv;)Z
    .locals 3

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {p1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1001

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMAsrTestEngine"

    const-string v1, "stopRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->h:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->i:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->j:Z

    const-string v0, "DMAsrTestEngine"

    const-string v1, "stopRecognition is end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMAsrTestEngine"

    const-string v1, "cancelRecAndStartWakeup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->h:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->j:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 2

    const-string v0, "DMAsrTestEngine"

    const-string v1, "destory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->f:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->k:Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->c:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    return-void
.end method

.method public final e()Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "DMAsrTestEngine"

    const-string v1, "startRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1008

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->h:Z

    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->j:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->f:Landroid/content/Context;

    const-string v1, "startRecognition"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4
.end method

.method public final f()Z
    .locals 2

    const-string v0, "DMAsrTestEngine"

    const-string v1, "isRecoginzing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->j:Z

    return v0
.end method

.method public final g()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMAsrTestEngine"

    const-string v1, "cancelRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->h:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->i:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->j:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method
