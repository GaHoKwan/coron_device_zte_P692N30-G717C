.class final Ltmsdkobf/hc$a;
.super Ltmsdk/bg/module/aresengine/DataMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataMonitor",
        "<",
        "Ltmsdk/common/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private oS:Ltmsdkobf/hf;

.field private oT:Ltmsdkobf/hc$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataMonitor;-><init>()V

    .line 214
    new-instance v0, Ltmsdkobf/hc$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltmsdkobf/hc$c;-><init>(Ltmsdkobf/hc$1;)V

    iput-object v0, p0, Ltmsdkobf/hc$a;->oT:Ltmsdkobf/hc$c;

    .line 215
    invoke-direct {p0}, Ltmsdkobf/hc$a;->register()V

    .line 216
    return-void
.end method

.method static synthetic a(Ltmsdkobf/hc$a;)Ltmsdkobf/hc$c;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Ltmsdkobf/hc$a;->oT:Ltmsdkobf/hc$c;

    return-object v0
.end method

.method private cb()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Ltmsdkobf/hc$a;->oS:Ltmsdkobf/hf;

    invoke-virtual {v0}, Ltmsdkobf/hf;->cb()V

    .line 270
    return-void
.end method

.method private register()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Ltmsdkobf/hc$a$1;

    invoke-direct {v0, p0}, Ltmsdkobf/hc$a$1;-><init>(Ltmsdkobf/hc$a;)V

    iput-object v0, p0, Ltmsdkobf/hc$a;->oS:Ltmsdkobf/hf;

    .line 262
    iget-object v0, p0, Ltmsdkobf/hc$a;->oS:Ltmsdkobf/hf;

    invoke-virtual {v0}, Ltmsdkobf/hf;->register()V

    .line 263
    return-void
.end method


# virtual methods
.method varargs a(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 0
    .parameter "sms"
    .parameter "objects"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/hc$a;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    return-void
.end method

.method protected varargs a(ZLtmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 4
    .parameter "isabort"
    .parameter "data"
    .parameter "objects"

    .prologue
    const/4 v3, 0x1

    .line 234
    invoke-super {p0, p1, p2, p3}, Ltmsdk/bg/module/aresengine/DataMonitor;->a(ZLtmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 237
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    aget-object v1, p3, v3

    instance-of v1, v1, Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 238
    aget-object v0, p3, v3

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 239
    .local v0, receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 241
    .end local v0           #receiver:Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(ZLtmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    check-cast p2, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Ltmsdkobf/hc$a;->a(ZLtmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Ltmsdkobf/hc$a;->cb()V

    .line 221
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 222
    return-void
.end method

.method public setRegisterState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 274
    iget-object v0, p0, Ltmsdkobf/hc$a;->oS:Ltmsdkobf/hf;

    invoke-virtual {v0}, Ltmsdkobf/hf;->cd()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 275
    if-eqz p1, :cond_1

    .line 276
    invoke-direct {p0}, Ltmsdkobf/hc$a;->register()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-direct {p0}, Ltmsdkobf/hc$a;->cb()V

    goto :goto_0
.end method
