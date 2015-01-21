.class Lcom/autonavi/xmgd/logic/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/z;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/z;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/aa;->a:Lcom/autonavi/xmgd/logic/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/aa;->a:Lcom/autonavi/xmgd/logic/z;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/z;->a(Lcom/autonavi/xmgd/logic/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/aa;->a:Lcom/autonavi/xmgd/logic/z;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/z;->a(Lcom/autonavi/xmgd/logic/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ab;

    invoke-static {}, Lcom/mobilebox/tts/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobilebox/tts/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/autonavi/xmgd/logic/ab;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/aa;->a:Lcom/autonavi/xmgd/logic/z;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/z;->a(Lcom/autonavi/xmgd/logic/z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/aa;->a:Lcom/autonavi/xmgd/logic/z;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/z;->b(Lcom/autonavi/xmgd/logic/z;)Lcom/autonavi/xmgd/utility/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/aa;->a:Lcom/autonavi/xmgd/logic/z;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/z;->c(Lcom/autonavi/xmgd/logic/z;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isHasPhoneCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v1

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/ab;->a:[B

    invoke-virtual {v1, v0}, Lcom/mobilebox/tts/g;->a([B)V

    goto :goto_0
.end method
