.class public Lcom/mediatek/calendarimporter/BindServiceHelper;
.super Ljava/lang/Object;
.source "BindServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BindServiceHelper"


# instance fields
.field private mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

.field private final mContext:Landroid/content/Context;

.field protected mService:Lcom/mediatek/calendarimporter/service/VCalService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 49
    new-instance v0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/BindServiceHelper$1;-><init>(Lcom/mediatek/calendarimporter/BindServiceHelper;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 76
    iput-object p1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;

    .line 77
    instance-of v0, p1, Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    .end local p1
    iput-object p1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 49
    new-instance v0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/BindServiceHelper$1;-><init>(Lcom/mediatek/calendarimporter/BindServiceHelper;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 91
    iput-object p1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calendarimporter/BindServiceHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/calendarimporter/BindServiceHelper;)Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    return-object v0
.end method


# virtual methods
.method public onBindService()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 101
    return-void
.end method

.method public unBindService()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "BindServiceHelper"

    const-string v1, "unBindService"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    :cond_0
    return-void
.end method
