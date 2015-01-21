.class public Lcom/zte/heartyservice/setting/TimerManager;
.super Ljava/lang/Object;
.source "TimerManager.java"


# static fields
.field private static mInstance:Lcom/zte/heartyservice/setting/TimerManager;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/setting/TimerManager;->mMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/setting/TimerManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/zte/heartyservice/setting/TimerManager;->mInstance:Lcom/zte/heartyservice/setting/TimerManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/zte/heartyservice/setting/TimerManager;

    invoke-direct {v0}, Lcom/zte/heartyservice/setting/TimerManager;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/setting/TimerManager;->mInstance:Lcom/zte/heartyservice/setting/TimerManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/setting/TimerManager;->mInstance:Lcom/zte/heartyservice/setting/TimerManager;

    return-object v0
.end method


# virtual methods
.method public cancelTimer(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "pendingIntent"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 42
    return-void
.end method

.method public startTimer(Landroid/app/PendingIntent;JI)V
    .locals 3
    .parameter "pendingIntent"
    .parameter "delay"
    .parameter "type"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 33
    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p4, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimerManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p4, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
