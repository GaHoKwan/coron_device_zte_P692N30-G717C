.class public Lcom/zte/update/ui/pop/DownloadActionWithPop;
.super Lcom/zte/update/ui/pop/ActionWithPop;
.source "DownloadActionWithPop.java"


# instance fields
.field mainKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "mainKey"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/zte/update/ui/pop/ActionWithPop;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/zte/update/ui/pop/DownloadActionWithPop;->mainKey:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/update/ui/pop/DownloadActionWithPop;->mainKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startDownload(Ljava/lang/String;)V

    .line 19
    return-void
.end method
