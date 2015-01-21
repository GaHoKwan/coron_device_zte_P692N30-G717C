.class public final Lcom/zte/heartyservice/intercept/Tencent/SecureServiceNew;
.super Ltmsdk/common/TMSService;
.source "SecureServiceNew.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ltmsdk/common/TMSService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Ltmsdk/common/TMSService;->onCreate()V

    .line 15
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Ltmsdk/common/TMSService;->onStart(Landroid/content/Intent;I)V

    .line 20
    return-void
.end method
