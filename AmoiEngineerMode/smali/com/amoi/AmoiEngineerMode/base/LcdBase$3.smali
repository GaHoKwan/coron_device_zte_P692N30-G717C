.class Lcom/amoi/AmoiEngineerMode/base/LcdBase$3;
.super Ljava/util/TimerTask;
.source "LcdBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/LcdBase;->initTimerAndTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/LcdBase;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$3;->this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$3;->this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    return-void
.end method
