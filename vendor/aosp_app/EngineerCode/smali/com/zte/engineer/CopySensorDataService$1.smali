.class Lcom/zte/engineer/CopySensorDataService$1;
.super Ljava/lang/Object;
.source "CopySensorDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/CopySensorDataService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/CopySensorDataService;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/engineer/CopySensorDataService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zte/engineer/CopySensorDataService$1;->this$0:Lcom/zte/engineer/CopySensorDataService;

    iput-object p2, p0, Lcom/zte/engineer/CopySensorDataService$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, ">>>>>>>>>>>>>>Thread>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/zte/engineer/CopySensorDataService$1;->val$value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/engineer/CopySensorDataService$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "do set sensor adjust!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/zte/engineer/CopySensorDataService$1;->val$value:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/engineer/SensorTestEx;->sensorAdjust(Ljava/lang/String;)V

    .line 44
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "end set sensor adjust!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/CopySensorDataService$1;->this$0:Lcom/zte/engineer/CopySensorDataService;

    iget-object v1, p0, Lcom/zte/engineer/CopySensorDataService$1;->this$0:Lcom/zte/engineer/CopySensorDataService;

    #getter for: Lcom/zte/engineer/CopySensorDataService;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/zte/engineer/CopySensorDataService;->access$000(Lcom/zte/engineer/CopySensorDataService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 52
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "<<<<<<<<<<<<<<Thread<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 46
    :cond_0
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "do sensor adjust!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/engineer/SensorTestEx;->sensorAdjust(Ljava/lang/String;)V

    .line 48
    const-string v0, "Emode.CopySensorDataService"

    const-string v1, "end sensor adjust!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
