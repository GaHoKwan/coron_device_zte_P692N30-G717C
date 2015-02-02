.class Lcom/mediatek/engineermode/BatteryLog$1;
.super Landroid/os/Handler;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/BatteryLog;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/engineermode/BatteryLog$1;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private updateBatteryStats()V
    .locals 5

    .prologue
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 125
    .local v0, uptime:J
    iget-object v2, p0, Lcom/mediatek/engineermode/BatteryLog$1;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mUptime:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/engineermode/BatteryLog;->access$000(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/mediatek/engineermode/BatteryLog$1;->updateBatteryStats()V

    .line 119
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    :cond_0
    return-void
.end method
