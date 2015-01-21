.class Lcom/mediatek/mtklogger/MainActivity$11;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/MainActivity;->monitorSdcardRatioBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$11;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$11;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$500(Lcom/mediatek/mtklogger/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 796
    return-void
.end method
