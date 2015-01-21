.class final Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;
.super Ljava/lang/Object;
.source "AbstractApkActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 4

    .prologue
    .line 307
    const-string v1, "<==>tsj"

    const-string v2, "queueIdle"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.APKMANAGERSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, intentIApksManagerService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 312
    .end local v0           #intentIApksManagerService:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
