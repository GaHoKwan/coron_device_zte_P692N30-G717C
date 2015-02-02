.class Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$3;
.super Ljava/util/TimerTask;
.source "FlashLightBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->initTimerAndTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$3;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$3;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->access$500(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    return-void
.end method
