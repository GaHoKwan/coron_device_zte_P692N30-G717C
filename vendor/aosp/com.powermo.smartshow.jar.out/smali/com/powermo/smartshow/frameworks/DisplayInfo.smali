.class public Lcom/powermo/smartshow/frameworks/DisplayInfo;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:F

.field c:I

.field d:I

.field e:I

.field f:Lcom/powermo/smartshow/frameworks/n;

.field g:Landroid/view/Display;

.field h:Ljava/lang/String;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I


# direct methods
.method public constructor <init>(ILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/powermo/smartshow/frameworks/DisplayInfo;-><init>(Ljava/lang/String;III)V

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x4320

    const/high16 v1, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    iput-object v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->g:Landroid/view/Display;

    iput-object v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->f:Lcom/powermo/smartshow/frameworks/n;

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->h:Ljava/lang/String;

    iput p3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    iput p4, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    iput p5, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    iput p6, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->c:I

    iput p7, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    iput p3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    iput p8, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    iput p9, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    iput p10, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    if-lez p9, :cond_1

    if-lez p10, :cond_1

    if-le p9, p10, :cond_0

    int-to-float v0, p9

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    :goto_0
    return-void

    :cond_0
    int-to-float v0, p10

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x4320

    const/high16 v1, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    iput-object v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->g:Landroid/view/Display;

    iput-object v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->f:Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->CONTENT_MODE_UNIQUE:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->a:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    iget v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->g:Landroid/view/Display;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->f:Lcom/powermo/smartshow/frameworks/n;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->g:Landroid/view/Display;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    iget-object v1, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->g:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    iput v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x4

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    :cond_0
    :goto_0
    iput v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    iget v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-int v1, v1

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    iget v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    float-to-int v1, v1

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    iput v2, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iput v4, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xa0

    const/high16 v2, 0x3f80

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    iput v2, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    iput-object v4, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->g:Landroid/view/Display;

    iput-object v4, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->f:Lcom/powermo/smartshow/frameworks/n;

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DISPLAY_ID:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->h:Ljava/lang/String;

    iput p2, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    iput p3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->c:I

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    iput v1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    iput v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    iput v3, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    iput v2, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    return-void
.end method


# virtual methods
.method a()Lcom/powermo/smartshow/frameworks/n;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->f:Lcom/powermo/smartshow/frameworks/n;

    return-object v0
.end method

.method a(Lcom/powermo/smartshow/frameworks/n;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->f:Lcom/powermo/smartshow/frameworks/n;

    return-void
.end method

.method public getContentMode()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->a:I

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRotateCap()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    return v0
.end method

.method public getXdpi()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    return v0
.end method

.method public getYdpi()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    return v0
.end method

.method public setContentMode(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->a:I

    return-void
.end method

.method public setDensity(F)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    return-void
.end method

.method public setRotateCap(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
