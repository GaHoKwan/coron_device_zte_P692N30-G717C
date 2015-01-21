.class public Lcom/zte/update/mgr/downloadhandler/StopAllDownloadHandler;
.super Ljava/lang/Object;
.source "StopAllDownloadHandler.java"

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
    invoke-static {}, Lcom/zte/update/download/DownloadManager;->getInstance()Lcom/zte/update/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/download/DownloadManager;->delAllTasks()V

    .line 14
    return-void
.end method
