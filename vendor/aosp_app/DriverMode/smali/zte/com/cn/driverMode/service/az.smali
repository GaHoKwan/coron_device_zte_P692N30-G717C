.class public final Lzte/com/cn/driverMode/service/az;
.super Landroid/telephony/PhoneStateListener;


# static fields
.field private static g:I


# instance fields
.field protected a:Lzte/com/cn/driverMode/service/bv;

.field protected b:Lzte/com/cn/driverMode/service/DMApplication;

.field protected c:Lzte/com/cn/driverMode/service/by;

.field public d:I

.field protected e:Landroid/content/Context;

.field protected f:Z

.field private h:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lzte/com/cn/driverMode/service/az;->g:I

    return-void
.end method

.method public constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput v0, p0, Lzte/com/cn/driverMode/service/az;->d:I

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/az;->f:Z

    iput-object p1, p0, Lzte/com/cn/driverMode/service/az;->h:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->h:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->h:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/az;->e:Landroid/content/Context;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->h:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->b()Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/az;->a:Lzte/com/cn/driverMode/service/bv;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->h:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    return-void
.end method

.method private a(I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->a:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->what:I

    const/16 v0, 0x3003

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v3, v0, Lzte/com/cn/driverMode/service/DMApplication;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v0, "DMPhoneLister"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isEmergencyCall dmApplication.callRecordMap.size()="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v6, v6, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DMPhoneLister"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isEmergencyCall getPhoneName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    const-string v7, ""

    invoke-virtual {v6, v3, v7}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "DMPhoneLister"

    const-string v5, "isEmergencyCall map size = 0"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iput v9, v2, Landroid/os/Message;->arg1:I

    :cond_3
    const-string v0, "DMPhoneLister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "send EVENT: message="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->a:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0, v2}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x493e0

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    const-string v0, "DMPhoneLister"

    const-string v5, "isEmergencyCall time > 5 mminutes"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v9, :cond_6

    const-string v0, "DMPhoneLister"

    const-string v1, "isEmergencyCall times < 2 "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    const-string v0, "DMPhoneLister"

    const-string v4, "isEmergencyCall times < 2 "

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto/16 :goto_1
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x1

    sget v0, Lzte/com/cn/driverMode/service/az;->g:I

    if-ne v0, v5, :cond_2

    const-string v0, "DMPhoneLister"

    const-string v1, "preCallState == CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->e:Landroid/content/Context;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    const-string v2, "Reject_inCall"

    invoke-virtual {v1, v2, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "DMPhoneLister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after prefs.getBoolean---flags_filter="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "DMPhoneLister"

    const-string v1, "flags_filter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3003

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/az;->a(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v5, v0, Lzte/com/cn/driverMode/service/DMApplication;->c:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3006

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/az;->a(I)V

    goto :goto_0

    :cond_2
    sget v0, Lzte/com/cn/driverMode/service/az;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "DMPhoneLister"

    const-string v1, "preCallState == CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3005

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/az;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/az;->f:Z

    return v0
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "DMPhoneLister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged------state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v5, :cond_1

    const-string v0, "DMPhoneLister"

    const-string v1, "bRunningBackground--TelephonyManager.CALL_STATE_RINGING!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.ToggleMusic"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "toggle"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const-string v0, "DMPhoneLister"

    const-string v1, "bRunningBackground--TelephonyManager.CALL_STATE_IDLE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.ToggleMusic"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "toggle"

    const-string v3, "play"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/az;->f:Z

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/az;->b()V

    sput v4, Lzte/com/cn/driverMode/service/az;->g:I

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/az;->f:Z

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const-string v0, "DMPhoneLister"

    const-string v1, "incomeingNumber is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "DMPhoneLister"

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iput-object p2, v0, Lzte/com/cn/driverMode/service/DMApplication;->b:Ljava/lang/String;

    sput v5, Lzte/com/cn/driverMode/service/az;->g:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->e:Landroid/content/Context;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    const-string v2, "Reject_inCall"

    invoke-virtual {v1, v2, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "DMPhoneLister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after prefs.getBoolean---flags_filter="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iget-object v3, p0, Lzte/com/cn/driverMode/service/az;->c:Lzte/com/cn/driverMode/service/by;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/az;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v4, v4, Lzte/com/cn/driverMode/service/DMApplication;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const-string v0, "DMPhoneLister"

    const-string v1, "flags_filter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3004

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/az;->a(I)V

    :goto_2
    iput v5, p0, Lzte/com/cn/driverMode/service/az;->d:I

    goto :goto_1

    :cond_6
    const/16 v0, 0x3002

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/az;->a(I)V

    goto :goto_2

    :pswitch_1
    const-string v0, "DMPhoneLister"

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/az;->f:Z

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/az;->b()V

    sput v4, Lzte/com/cn/driverMode/service/az;->g:I

    iput v3, p0, Lzte/com/cn/driverMode/service/az;->d:I

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v5, p0, Lzte/com/cn/driverMode/service/az;->f:Z

    const/4 v0, 0x3

    iput v0, p0, Lzte/com/cn/driverMode/service/az;->d:I

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_7
    const-string v0, "DMPhoneLister"

    const-string v1, "incomeingNumber is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v0, "DMPhoneLister"

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v3, Lzte/com/cn/driverMode/service/az;->g:I

    const/16 v0, 0x3007

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/az;->a(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
