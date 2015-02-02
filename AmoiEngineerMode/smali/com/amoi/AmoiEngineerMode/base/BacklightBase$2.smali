.class Lcom/amoi/AmoiEngineerMode/base/BacklightBase$2;
.super Ljava/util/TimerTask;
.source "BacklightBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->initTimerAndTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/BacklightBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/BacklightBase;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BacklightBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BacklightBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method
