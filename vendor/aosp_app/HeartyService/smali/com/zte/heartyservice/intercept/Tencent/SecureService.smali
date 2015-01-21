.class public Lcom/zte/heartyservice/intercept/Tencent/SecureService;
.super Ltmsdk/common/TMSService;
.source "SecureService.java"


# instance fields
.field private mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ltmsdk/common/TMSService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Ltmsdk/common/TMSService;->onCreate()V

    .line 35
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/SecureService;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Ltmsdk/common/TMSService;->onDestroy()V

    .line 122
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Ltmsdk/common/TMSService;->onStart(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
