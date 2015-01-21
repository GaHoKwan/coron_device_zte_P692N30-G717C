.class public Lcom/zte/engineer/CopySensorDataService;
.super Landroid/app/Service;
.source "CopySensorDataService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.CopySensorDataService"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private sensorprop:Ljava/util/Properties;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/zte/engineer/CopySensorDataService;->sensorprop:Ljava/util/Properties;

    .line 15
    iput-object v0, p0, Lcom/zte/engineer/CopySensorDataService;->value:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/zte/engineer/CopySensorDataService;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/CopySensorDataService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/engineer/CopySensorDataService;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 21
    const-string v3, "Emode.CopySensorDataService"

    const-string v4, ">>>>>>>>>>>>>>onCreate>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/engineer/CopySensorDataService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/zte/engineer/CopySensorDataService;->mIntent:Landroid/content/Intent;

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 35
    const-string v3, "sensor"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, value:Ljava/lang/String;
    const-string v3, "Emode.CopySensorDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------sensorAdjust-----value========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/zte/engineer/CopySensorDataService$1;

    invoke-direct {v4, p0, v2}, Lcom/zte/engineer/CopySensorDataService$1;-><init>(Lcom/zte/engineer/CopySensorDataService;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 56
    const-string v3, "Emode.CopySensorDataService"

    const-string v4, "<<<<<<<<<<<<<<onCreate<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.CopySensorDataService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 31
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, ">>>>>>>>>>>>>>onDestroy>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "<<<<<<<<<<<<<<onDestroy<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 61
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, ">>>>>>>>>>>>>>onStart>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 63
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "<<<<<<<<<<<<<<onStart<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 68
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, ">>>>>>>>>>>>>>onStartCommand(Intent, int, int)>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "<<<<<<<<<<<<<<onStartCommand(Intent, int, int)<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x2

    return v0
.end method
