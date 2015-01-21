.class public Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;
.super Ljava/lang/Object;
.source "HandwriteMeta.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;


# instance fields
.field private isNew:Z

.field private paintColor:I

.field private paintWidth:F

.field private wordWidthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    .line 25
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getHandWritePaintWidth()F

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintWidth:F

    .line 26
    const/high16 v0, -0x100

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintColor:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->isNew:Z

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->copy()Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;
    .locals 6

    .prologue
    .line 32
    new-instance v3, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-direct {v3}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;-><init>()V

    .line 33
    .local v3, meta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->isNew:Z

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setIsNew(Z)V

    .line 34
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintWidth:F

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setPaintWidth(F)V

    .line 35
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintColor:I

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setPaintColor(I)V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    invoke-virtual {v3, v2}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setWordWidthList(Ljava/util/List;)V

    .line 44
    return-object v3

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 41
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPaintColor()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintColor:I

    return v0
.end method

.method public getPaintWidth()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintWidth:F

    return v0
.end method

.method public getWordWidthList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->isNew:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    return-void

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->BLANK_CHARACTER:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_0

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->RETURN_CHARACTER:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public setIsNew(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 86
    iput-boolean p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->isNew:Z

    .line 87
    return-void
.end method

.method public setPaintColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 97
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintColor:I

    .line 98
    return-void
.end method

.method public setPaintWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 91
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/NoteApp;->setHandWritePaintWidth(F)V

    .line 92
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->paintWidth:F

    .line 93
    return-void
.end method

.method public setWordWidthList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    .line 103
    return-void
.end method

.method public trash()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->onDestroy()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->wordWidthList:Ljava/util/List;

    .line 109
    return-void
.end method
