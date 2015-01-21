.class Lcom/mediatek/lbs/em/LbsView$1;
.super Landroid/content/BroadcastReceiver;
.source "LbsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsView;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsView;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsView$1;->this$0:Lcom/mediatek/lbs/em/LbsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    .local v1, gpsStatus:Z
    if-eqz v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsView$1;->this$0:Lcom/mediatek/lbs/em/LbsView;

    #getter for: Lcom/mediatek/lbs/em/LbsView;->mViewGps:Lcom/mediatek/lbs/em/ViewGps;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsView;->access$000(Lcom/mediatek/lbs/em/LbsView;)Lcom/mediatek/lbs/em/ViewGps;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/ViewGps;->resetGpsView()V

    .line 44
    .end local v1           #gpsStatus:Z
    :cond_0
    return-void
.end method
