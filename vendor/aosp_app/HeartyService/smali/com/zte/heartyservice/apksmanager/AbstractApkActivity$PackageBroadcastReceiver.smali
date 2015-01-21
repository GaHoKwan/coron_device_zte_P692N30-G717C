.class public Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 295
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageBroadcastReceiver onReceive Aciton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->BroadcastReceiverOperation(Landroid/content/Context;Landroid/content/Intent;)V

    .line 299
    :cond_0
    return-void
.end method
