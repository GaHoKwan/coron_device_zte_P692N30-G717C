.class Lcom/autonavi/xmgd/navigator/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/GPSInfo;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/GPSInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/at;->a:Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/at;->a:Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Lcom/autonavi/xmgd/navigator/GPSInfo;)Lcom/autonavi/xmgd/view/GPSInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/at;->a:Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Lcom/autonavi/xmgd/navigator/GPSInfo;)Lcom/autonavi/xmgd/view/GPSInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GPSInfoView;->invalidate()V

    :cond_0
    return-void
.end method
