.class Lcom/autonavi/xmgd/logic/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/logic/ab;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Lcom/autonavi/xmgd/utility/Timer;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/z;->b:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/z;->c:Z

    new-instance v0, Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0xc8

    new-instance v3, Lcom/autonavi/xmgd/logic/aa;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/logic/aa;-><init>(Lcom/autonavi/xmgd/logic/z;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/Timer;-><init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/z;->d:Lcom/autonavi/xmgd/utility/Timer;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/z;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    return-object v0
.end method

.method private a([BZZ)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MapLogic]  playTTS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/autonavi/xmgd/logic/ab;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/logic/ab;-><init>(Lcom/autonavi/xmgd/logic/z;)V

    iput-object p1, v1, Lcom/autonavi/xmgd/logic/ab;->a:[B

    iput-boolean p2, v1, Lcom/autonavi/xmgd/logic/ab;->b:Z

    iput-boolean p3, v1, Lcom/autonavi/xmgd/logic/ab;->c:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->d:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ab;

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-boolean v0, v0, Lcom/autonavi/xmgd/logic/ab;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-boolean v2, v0, Lcom/autonavi/xmgd/logic/ab;->c:Z

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lcom/autonavi/xmgd/logic/ab;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/z;)Lcom/autonavi/xmgd/utility/Timer;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->d:Lcom/autonavi/xmgd/utility/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/logic/z;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/z;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->d:Lcom/autonavi/xmgd/utility/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->d:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/z;->d:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/autonavi/xmgd/logic/z;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MapController]  playTTS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/autonavi/xmgd/logic/z;->a([BZZ)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/z;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/z;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/z;->b:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/z;->c:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/logic/z;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/z;->c:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/z;->b:Z

    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobilebox/tts/g;->d()V

    return-void
.end method
