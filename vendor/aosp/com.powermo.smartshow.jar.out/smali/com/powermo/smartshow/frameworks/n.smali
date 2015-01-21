.class public Lcom/powermo/smartshow/frameworks/n;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lcom/powermo/smartshow/frameworks/a;

.field c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->b:Lcom/powermo/smartshow/frameworks/a;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/n;->d:Ljava/lang/String;

    iput p2, p0, Lcom/powermo/smartshow/frameworks/n;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    invoke-direct {v0}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;-><init>()V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/n;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setId(I)V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/n;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setType(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setDisplayId(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setState(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setWidth(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setHeight(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getContentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setContentMode(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->setDensity(F)V

    goto :goto_0
.end method

.method public a(Lcom/powermo/smartshow/frameworks/DisplayInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v0, p0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->a(Lcom/powermo/smartshow/frameworks/n;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/powermo/smartshow/frameworks/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/n;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/n;->c:Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getType()I

    move-result v0

    return v0
.end method
