.class public Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:F

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DISPLAY_ID:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->h:I

    iput p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    iput p3, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    iput p4, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->CONTENT_MODE_UNIQUE:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    iput p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    iput p3, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    iput p4, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->h:I

    iput p5, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    iput p6, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    iput p7, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    return-void
.end method


# virtual methods
.method public getContentMode()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->a:I

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->h:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    return v0
.end method

.method public setContentMode(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->a:I

    return-void
.end method

.method public setDensity(F)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    return-void
.end method

.method public setDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->h:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
