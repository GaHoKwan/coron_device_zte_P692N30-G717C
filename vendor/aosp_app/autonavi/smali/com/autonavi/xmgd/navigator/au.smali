.class Lcom/autonavi/xmgd/navigator/au;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/GPSInfo;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/GPSInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/au;->a:Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/au;->a:Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Lcom/autonavi/xmgd/navigator/GPSInfo;)Lcom/autonavi/xmgd/view/GPSInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GPSInfoView;->invalidate()V

    :cond_0
    return-void
.end method
