.class Lcom/mediatek/lbs/em/LbsAgps$17$1;
.super Ljava/lang/Thread;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

.field final synthetic val$agpsStatus:Z


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps$17;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iput-boolean p2, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->val$agpsStatus:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    const-wide/16 v1, 0x3e8

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->msleep(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$2900(Lcom/mediatek/lbs/em/LbsAgps;J)V

    .line 1010
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    const/4 v1, 0x3

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->setGpsMode(I)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$3000(Lcom/mediatek/lbs/em/LbsAgps;I)V

    .line 1011
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    const-wide/16 v1, 0xbb8

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->msleep(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$2900(Lcom/mediatek/lbs/em/LbsAgps;J)V

    .line 1012
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$2800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1013
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$2700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v1, v1, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$2600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1014
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->val$agpsStatus:Z

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17$1;->this$1:Lcom/mediatek/lbs/em/LbsAgps$17;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->enable()V

    .line 1017
    :cond_0
    return-void
.end method
