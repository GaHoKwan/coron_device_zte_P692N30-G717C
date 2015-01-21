.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Demoing(I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnDeming()V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
