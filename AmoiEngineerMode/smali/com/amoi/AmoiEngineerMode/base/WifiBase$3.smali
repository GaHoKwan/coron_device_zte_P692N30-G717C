.class Lcom/amoi/AmoiEngineerMode/base/WifiBase$3;
.super Ljava/util/TimerTask;
.source "WifiBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/WifiBase;->initTimerAndTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/WifiBase;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$3;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$3;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method