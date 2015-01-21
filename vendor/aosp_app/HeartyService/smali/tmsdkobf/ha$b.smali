.class final Ltmsdkobf/ha$b;
.super Ltmsdk/bg/module/aresengine/DataMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataMonitor",
        "<",
        "Ltmsdk/common/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private oN:Landroid/telephony/PhoneStateListener;

.field private oO:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataMonitor;-><init>()V

    .line 73
    invoke-direct {p0}, Ltmsdkobf/ha$b;->register()V

    .line 74
    return-void
.end method

.method private cb()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getInstance()Ltmsdk/common/DualSimTelephonyManager;

    move-result-object v0

    .line 194
    .local v0, m:Ltmsdk/common/DualSimTelephonyManager;
    iget-object v1, p0, Ltmsdkobf/ha$b;->oN:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v3, v1, v3}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 197
    const/4 v1, 0x1

    iget-object v2, p0, Ltmsdkobf/ha$b;->oO:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 200
    return-void
.end method

.method private register()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 115
    new-instance v1, Ltmsdkobf/ha$b$1;

    invoke-direct {v1, p0}, Ltmsdkobf/ha$b$1;-><init>(Ltmsdkobf/ha$b;)V

    iput-object v1, p0, Ltmsdkobf/ha$b;->oN:Landroid/telephony/PhoneStateListener;

    .line 145
    new-instance v1, Ltmsdkobf/ha$b$2;

    invoke-direct {v1, p0}, Ltmsdkobf/ha$b$2;-><init>(Ltmsdkobf/ha$b;)V

    iput-object v1, p0, Ltmsdkobf/ha$b;->oO:Landroid/telephony/PhoneStateListener;

    .line 181
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getInstance()Ltmsdk/common/DualSimTelephonyManager;

    move-result-object v0

    .line 182
    .local v0, m:Ltmsdk/common/DualSimTelephonyManager;
    const/4 v1, 0x0

    iget-object v2, p0, Ltmsdkobf/ha$b;->oN:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 185
    const/4 v1, 0x1

    iget-object v2, p0, Ltmsdkobf/ha$b;->oO:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/DualSimTelephonyManager;->listenPhonesState(ILandroid/telephony/PhoneStateListener;I)Z

    .line 188
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
    .line 78
    invoke-direct {p0}, Ltmsdkobf/ha$b;->cb()V

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    return-void
.end method
