.class Lcom/mediatek/mtklogger/framework/MTKLoggerService$3;
.super Landroid/content/BroadcastReceiver;
.source "MTKLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MTKLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$3;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 507
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 508
    .local v0, newUserId:I
    const-string v1, "MTKLogger/MTKLoggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor a user switch event. New user id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->USER_ID:I

    if-ne v0, v1, :cond_0

    .line 510
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "Switch current user to fore ground, sync info with native now"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$3;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateLogStatus()V
    invoke-static {v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$700(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "Current user is set to background, just ignore and let me free some time, thank you."

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
