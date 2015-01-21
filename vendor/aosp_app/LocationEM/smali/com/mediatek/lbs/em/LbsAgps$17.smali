.class Lcom/mediatek/lbs/em/LbsAgps$17;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->isGPSProviderEnable()Z
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$2500(Lcom/mediatek/lbs/em/LbsAgps;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->getStatus()Z

    move-result v6

    .line 1002
    .local v6, agpsStatus:Z
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    .line 1003
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$2700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsAgps;->access$2600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1005
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$17;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$2800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1007
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$17$1;

    invoke-direct {v0, p0, v6}, Lcom/mediatek/lbs/em/LbsAgps$17$1;-><init>(Lcom/mediatek/lbs/em/LbsAgps$17;Z)V

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsAgps$17$1;->start()V

    goto :goto_0
.end method
