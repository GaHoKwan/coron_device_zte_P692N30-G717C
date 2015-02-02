.class Lcom/amoi/AmoiEngineerMode/base/VibratorBase$2;
.super Ljava/util/TimerTask;
.source "VibratorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->startVibrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/VibratorBase;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    return-void
.end method
