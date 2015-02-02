.class Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$2;
.super Ljava/util/TimerTask;
.source "IndicatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initTimerAndTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method
