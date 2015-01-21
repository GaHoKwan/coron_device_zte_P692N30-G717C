.class final Ltmsdkobf/hi$a;
.super Ltmsdk/bg/module/aresengine/DataMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataMonitor",
        "<",
        "Ltmsdk/common/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final pw:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private pu:Landroid/database/ContentObserver;

.field private pv:Landroid/content/BroadcastReceiver;

.field private final px:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final py:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pz:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Ltmsdkobf/hi$a;->pw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataMonitor;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hi$a;->px:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hi$a;->py:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 89
    iput-object p1, p0, Ltmsdkobf/hi$a;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ltmsdkobf/hi$a;->register()V

    .line 91
    return-void
.end method

.method static synthetic a(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Ltmsdkobf/hi$a;->py:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private a(Landroid/database/ContentObserver;Ltmsdk/common/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 5
    .parameter "observer"
    .parameter "lastCallLog"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/ContentObserver;",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, records:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p2, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    .local v0, holdupTime:J
    iget-object v2, p2, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    .line 247
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p2, v2}, Ltmsdkobf/hi$a;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 253
    .end local v0           #holdupTime:J
    :cond_1
    return-void
.end method

.method static synthetic a(Ltmsdkobf/hi$a;Landroid/database/ContentObserver;Ltmsdk/common/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Ltmsdkobf/hi$a;->a(Landroid/database/ContentObserver;Ltmsdk/common/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-void
.end method

.method static synthetic b(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Ltmsdkobf/hi$a;->px:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic c(Ltmsdkobf/hi$a;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Ltmsdkobf/hi$a;->pu:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private cb()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 210
    iget-object v1, p0, Ltmsdkobf/hi$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Ltmsdkobf/hi$a;->pu:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    iget-object v1, p0, Ltmsdkobf/hi$a;->pz:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getInstance()Ltmsdk/common/DualSimTelephonyManager;

    move-result-object v0

    .line 214
    .local v0, m:Ltmsdk/common/DualSimTelephonyManager;
    iget-object v1, p0, Ltmsdkobf/hi$a;->pz:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v3, v1, v3}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 216
    const/4 v1, 0x1

    iget-object v2, p0, Ltmsdkobf/hi$a;->pz:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 219
    .end local v0           #m:Ltmsdk/common/DualSimTelephonyManager;
    :cond_0
    iput-object v4, p0, Ltmsdkobf/hi$a;->pu:Landroid/database/ContentObserver;

    .line 221
    iget-object v1, p0, Ltmsdkobf/hi$a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltmsdkobf/hi$a;->pv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    iput-object v4, p0, Ltmsdkobf/hi$a;->pv:Landroid/content/BroadcastReceiver;

    .line 223
    return-void
.end method

.method static synthetic ce()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Ltmsdkobf/hi$a;->pw:Z

    return v0
.end method

.method private register()V
    .locals 7

    .prologue
    const/16 v5, 0x20

    const/4 v6, 0x1

    .line 100
    new-instance v3, Ltmsdkobf/hi$a$1;

    invoke-direct {v3, p0}, Ltmsdkobf/hi$a$1;-><init>(Ltmsdkobf/hi$a;)V

    iput-object v3, p0, Ltmsdkobf/hi$a;->pv:Landroid/content/BroadcastReceiver;

    .line 141
    iget-object v3, p0, Ltmsdkobf/hi$a;->mContext:Landroid/content/Context;

    iget-object v4, p0, Ltmsdkobf/hi$a;->pv:Landroid/content/BroadcastReceiver;

    invoke-static {v3, v4}, Ltmsdk/common/utils/DualSimCallUtil;->registerDaulSimCallStateReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 143
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, outgoingIntentFilter:Landroid/content/IntentFilter;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 145
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Ltmsdkobf/hi$a;->mContext:Landroid/content/Context;

    iget-object v4, p0, Ltmsdkobf/hi$a;->pv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    sget-boolean v3, Ltmsdkobf/hi$a;->pw:Z

    if-eqz v3, :cond_0

    .line 150
    new-instance v3, Ltmsdkobf/hi$a$2;

    invoke-direct {v3, p0}, Ltmsdkobf/hi$a$2;-><init>(Ltmsdkobf/hi$a;)V

    iput-object v3, p0, Ltmsdkobf/hi$a;->pz:Landroid/telephony/PhoneStateListener;

    .line 165
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getInstance()Ltmsdk/common/DualSimTelephonyManager;

    move-result-object v0

    .line 166
    .local v0, m:Ltmsdk/common/DualSimTelephonyManager;
    const/4 v3, 0x0

    iget-object v4, p0, Ltmsdkobf/hi$a;->pz:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v3, v4, v5}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 169
    iget-object v3, p0, Ltmsdkobf/hi$a;->pz:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v6, v3, v5}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 174
    .end local v0           #m:Ltmsdk/common/DualSimTelephonyManager;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 175
    .local v2, workerHandler:Landroid/os/Handler;
    new-instance v3, Ltmsdkobf/hi$a$3;

    invoke-direct {v3, p0, v2, v2}, Ltmsdkobf/hi$a$3;-><init>(Ltmsdkobf/hi$a;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v3, p0, Ltmsdkobf/hi$a;->pu:Landroid/database/ContentObserver;

    .line 205
    iget-object v3, p0, Ltmsdkobf/hi$a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Ltmsdkobf/hi$a;->pu:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ltmsdkobf/hi$a;->cb()V

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    return-void
.end method
