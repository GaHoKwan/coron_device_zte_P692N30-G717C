.class public Lcom/isw/android/corp/telephony/EarPhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EarPhoneReceiver.java"


# static fields
.field static TAG:Ljava/lang/String;

.field public static bEarPhonePlugged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "EarPhoneReceiver"

    sput-object v0, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->bEarPhonePlugged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, state:I
    const-string v4, "app"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, app:Ljava/lang/String;
    sget-object v4, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v4, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz v1, :cond_0

    const-string v4, "miniishow"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #app:Ljava/lang/String;
    .end local v3           #state:I
    :goto_0
    return-void

    .line 56
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #app:Ljava/lang/String;
    .restart local v3       #state:I
    :cond_0
    if-eqz v3, :cond_1

    .line 57
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->bEarPhonePlugged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #app:Ljava/lang/String;
    .end local v3           #state:I
    :catch_0
    move-exception v2

    .line 63
    .local v2, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #app:Ljava/lang/String;
    .restart local v3       #state:I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    sput-boolean v4, Lcom/isw/android/corp/telephony/EarPhoneReceiver;->bEarPhonePlugged:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
