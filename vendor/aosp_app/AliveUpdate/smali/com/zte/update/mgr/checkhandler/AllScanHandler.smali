.class public Lcom/zte/update/mgr/checkhandler/AllScanHandler;
.super Ljava/lang/Object;
.source "AllScanHandler.java"

# interfaces
.implements Lcom/zte/update/mgr/Handleable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 1
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 13
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->initScanToRequestStorage()V

    .line 14
    return-void
.end method
