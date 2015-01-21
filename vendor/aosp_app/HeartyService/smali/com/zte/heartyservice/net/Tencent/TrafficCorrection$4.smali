.class final Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;
.super Ljava/lang/Object;
.source "TrafficCorrection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->trafficCorrection(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$subscription:I

.field final synthetic val$usedTraffic:D


# direct methods
.method constructor <init>(Landroid/content/Context;ID)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$appContext:Landroid/content/Context;

    iput p2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$subscription:I

    iput-wide p3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$usedTraffic:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 595
    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$subscription:I

    iget-wide v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$usedTraffic:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setStatsAdj(ID)D

    move-result-wide v0

    .line 598
    .local v0, usedTrafficAdj:D
    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$4;->val$appContext:Landroid/content/Context;

    const v4, 0x7f0a03a2

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 605
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->closeReceiver()V

    .line 607
    return-void
.end method
