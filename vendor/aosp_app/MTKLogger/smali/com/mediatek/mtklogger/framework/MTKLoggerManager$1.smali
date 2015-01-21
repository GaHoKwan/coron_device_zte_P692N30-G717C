.class Lcom/mediatek/mtklogger/framework/MTKLoggerManager$1;
.super Ljava/lang/Object;
.source "MTKLoggerManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MTKLoggerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerManager$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 21
    const-string v0, "MTKLogger/MTKLoggerManager"

    const-string v1, "Bind to service successfully"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerManager$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-static {p2}, Lcom/mediatek/mtklogger/IMTKLoggerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mtklogger/IMTKLoggerManager;

    move-result-object v1

    #setter for: Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->mService:Lcom/mediatek/mtklogger/IMTKLoggerManager;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->access$002(Lcom/mediatek/mtklogger/framework/MTKLoggerManager;Lcom/mediatek/mtklogger/IMTKLoggerManager;)Lcom/mediatek/mtklogger/IMTKLoggerManager;

    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 26
    const-string v0, "MTKLogger/MTKLoggerManager"

    const-string v1, "-->onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerManager$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->mService:Lcom/mediatek/mtklogger/IMTKLoggerManager;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->access$002(Lcom/mediatek/mtklogger/framework/MTKLoggerManager;Lcom/mediatek/mtklogger/IMTKLoggerManager;)Lcom/mediatek/mtklogger/IMTKLoggerManager;

    .line 28
    return-void
.end method
