.class Lcom/zte/engineer/SensorTestEx$1;
.super Ljava/lang/Object;
.source "SensorTestEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/SensorTestEx;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/SensorTestEx;


# direct methods
.method constructor <init>(Lcom/zte/engineer/SensorTestEx;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/zte/engineer/SensorTestEx$1;->this$0:Lcom/zte/engineer/SensorTestEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/engineer/SensorTestEx;->sensorAdjust(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx$1;->this$0:Lcom/zte/engineer/SensorTestEx;

    iget-object v0, v0, Lcom/zte/engineer/SensorTestEx;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    return-void
.end method
