.class public Lcom/zte/heartyservice/main/RestartHeartyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestartHeartyReceiver.java"


# instance fields
.field mUE:Lcom/zte/feedback/UEImprove;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isExistCrashLog()Z
    .locals 3

    .prologue
    .line 41
    const-string v1, "HeartyService-crash.log"

    .line 42
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    .line 47
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    const-string v0, ""

    const-string v1, " restart ing ==============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateBatteryNotice()V

    .line 36
    return-void
.end method
