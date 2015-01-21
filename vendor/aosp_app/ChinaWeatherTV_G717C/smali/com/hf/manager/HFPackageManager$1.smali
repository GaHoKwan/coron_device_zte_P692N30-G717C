.class Lcom/hf/manager/HFPackageManager$1;
.super Ljava/util/TimerTask;
.source "HFPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/HFPackageManager;->exitFromReceiver(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/manager/HFPackageManager;


# direct methods
.method constructor <init>(Lcom/hf/manager/HFPackageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/manager/HFPackageManager$1;->this$0:Lcom/hf/manager/HFPackageManager;

    .line 52
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 57
    iget-object v2, p0, Lcom/hf/manager/HFPackageManager$1;->this$0:Lcom/hf/manager/HFPackageManager;

    invoke-virtual {v2}, Lcom/hf/manager/HFPackageManager;->activityIsRunning()Z

    move-result v0

    .line 58
    .local v0, activityIsRun:Z
    iget-object v2, p0, Lcom/hf/manager/HFPackageManager$1;->this$0:Lcom/hf/manager/HFPackageManager;

    #getter for: Lcom/hf/manager/HFPackageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/manager/HFPackageManager;->access$0(Lcom/hf/manager/HFPackageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hf/widget/WidgetUtil;->widget_4_2_is_running(Landroid/content/Context;)Z

    move-result v1

    .line 59
    .local v1, widgetIsRun:Z
    const-string v2, "HFPackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "activityIsRun = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; widgetIsRun = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/hf/manager/HFPackageManager$1;->this$0:Lcom/hf/manager/HFPackageManager;

    #calls: Lcom/hf/manager/HFPackageManager;->exit()V
    invoke-static {v2}, Lcom/hf/manager/HFPackageManager;->access$1(Lcom/hf/manager/HFPackageManager;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-nez v0, :cond_0

    .line 63
    iget-object v2, p0, Lcom/hf/manager/HFPackageManager$1;->this$0:Lcom/hf/manager/HFPackageManager;

    #calls: Lcom/hf/manager/HFPackageManager;->clearCache()V
    invoke-static {v2}, Lcom/hf/manager/HFPackageManager;->access$2(Lcom/hf/manager/HFPackageManager;)V

    goto :goto_0
.end method
