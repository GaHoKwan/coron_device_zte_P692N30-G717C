.class public abstract Lcom/autonavi/xmgd/view/GDMenuItem;
.super Ljava/lang/Object;


# instance fields
.field private enabled:Z

.field private icon:Landroid/graphics/Bitmap;

.field private iconid:I

.field protected obj:Ljava/lang/Object;

.field protected tag:I

.field private title:Ljava/lang/String;

.field private titleid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->enabled:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->iconid:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->tag:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->titleid:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->enabled:Z

    return v0
.end method

.method public abstract onItemClick()V
.end method

.method public onItemLongClick()V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->enabled:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconId(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->iconid:I

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->obj:Ljava/lang/Object;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->tag:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleId(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/GDMenuItem;->titleid:I

    return-void
.end method
