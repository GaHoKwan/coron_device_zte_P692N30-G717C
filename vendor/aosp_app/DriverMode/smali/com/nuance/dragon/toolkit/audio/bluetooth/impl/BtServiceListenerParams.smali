.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-le v0, v1, :cond_0

    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;->b:Ljava/lang/Object;

    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;->a:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getProfile()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;->a:I

    return v0
.end method

.method public getProxy()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BtServiceListenerParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
