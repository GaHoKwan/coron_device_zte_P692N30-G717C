.class public Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;
.super Ljava/lang/Object;
.source "EventsMonitor.java"


# static fields
.field private static final ACTION_PHONE_STATE_CHANGED_FOR_MI:Ljava/lang/String; = "android.intent.action.PHONE_STATE_CHANGED_FOR_MI"

.field private static final NOTIFY_REACHED_DELAY:I = 0x0

.field private static final REMOVE_NOTIFY_DELAY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EventsMonitor"

.field private static mHandler:Landroid/os/Handler;

.field private static mInComingCallDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static mInComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private protect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 41
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$1;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->protect:Z

    .line 57
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltmsdk/bg/module/aresengine/DataMonitor;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, inComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->protect:Z

    .line 57
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mContext:Landroid/content/Context;

    .line 178
    sput-object p2, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mInComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;

    .line 179
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->notifyCallDataReached(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ltmsdk/bg/module/aresengine/DataMonitor;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mInComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static notifyCallDataReached(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 152
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>()V

    .line 153
    .local v0, calllog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    const-string v1, "incoming_number"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 154
    iput v4, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    .line 155
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/msim/SimManager;->getCallSubscription(Landroid/content/Intent;)I

    move-result v1

    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 156
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji debug call EventsMonitor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 158
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mInComingCallDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mInComingCallDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v0, v2}, Ltmsdk/bg/module/aresengine/DataMonitor;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public setCallMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, monitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    sput-object p1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mInComingCallDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;

    .line 173
    return-void
.end method

.method public setSmsMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, monitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    sput-object p1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mInComingSmsDataMonitor:Ltmsdk/bg/module/aresengine/DataMonitor;

    .line 169
    return-void
.end method

.method public startMonitor()V
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intentFilter1:Landroid/content/IntentFilter;
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 186
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, intentFilter2:Landroid/content/IntentFilter;
    const/16 v3, 0x3e7

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 189
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 191
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, intentFilter3:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PHONE_STATE_CHANGED_FOR_MI"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 196
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void
.end method
