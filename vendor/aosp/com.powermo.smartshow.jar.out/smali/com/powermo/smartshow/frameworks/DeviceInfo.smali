.class public Lcom/powermo/smartshow/frameworks/DeviceInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Rect;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->c:I

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->a:I

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->g:I

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->h:I

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->b:I

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getState()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->f:I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->h:I

    iget v2, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->b:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->b:I

    return v0
.end method

.method public getRendererId()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->c:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Renderer Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/DeviceInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
