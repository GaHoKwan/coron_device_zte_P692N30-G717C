.class Lcom/autonavi/xmgd/naviservice/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/naviservice/a;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/naviservice/a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/c;->a:Lcom/autonavi/xmgd/naviservice/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/c;->a:Lcom/autonavi/xmgd/naviservice/a;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/a;->a(Lcom/autonavi/xmgd/naviservice/a;)V

    return-void
.end method
