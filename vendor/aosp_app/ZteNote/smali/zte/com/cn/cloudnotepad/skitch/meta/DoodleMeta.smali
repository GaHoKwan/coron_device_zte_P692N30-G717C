.class public Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;
.super Ljava/lang/Object;
.source "DoodleMeta.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;


# instance fields
.field private doodleRect:Landroid/graphics/Rect;

.field private eraserWidth:F

.field private isNew:Z

.field private mBackground:Landroid/graphics/Bitmap;

.field private paintColor:I

.field private paintwidth:F

.field private traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    .line 30
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getDoodlePaintWidth()F

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintwidth:F

    .line 31
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getDoodleEraserWidth()F

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->eraserWidth:F

    .line 32
    const/high16 v0, -0x100

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->isNew:Z

    .line 34
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    .line 35
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->copy()Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;-><init>()V

    .line 41
    .local v0, doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->isNew:Z

    iput-boolean v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->isNew:Z

    .line 42
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintColor:I

    iput v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintColor:I

    .line 43
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintwidth:F

    iput v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintwidth:F

    .line 44
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->eraserWidth:F

    iput v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->eraserWidth:F

    .line 45
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    invoke-interface {v2}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    .line 46
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 47
    iput-object v4, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    .line 51
    :goto_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 52
    iput-object v4, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    :goto_1
    return-object v0

    .line 49
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 55
    :cond_2
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v1

    .line 58
    .local v1, tr:Ljava/lang/Throwable;
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    iput-object v4, v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public getDoodleBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDoodleRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEraserWidth()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->eraserWidth:F

    return v0
.end method

.method public getPaintColor()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintColor:I

    return v0
.end method

.method public getPaintwidth()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintwidth:F

    return v0
.end method

.method public getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 115
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->isNew:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->clear()V

    .line 123
    :cond_0
    return-void
.end method

.method public setDoodleBackground(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 100
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->mBackground:Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method public setDoodleRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 90
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->doodleRect:Landroid/graphics/Rect;

    .line 91
    return-void
.end method

.method public setEraserwidth(F)V
    .locals 1
    .parameter "w"

    .prologue
    .line 143
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/NoteApp;->setDoodleEraserWidth(F)V

    .line 144
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->eraserWidth:F

    .line 145
    return-void
.end method

.method public setIsNew(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 127
    iput-boolean p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->isNew:Z

    .line 128
    return-void
.end method

.method public setPaintColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 132
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintColor:I

    .line 133
    return-void
.end method

.method public setPaintwidth(F)V
    .locals 1
    .parameter "w"

    .prologue
    .line 137
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/NoteApp;->setDoodlePaintWidth(F)V

    .line 138
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->paintwidth:F

    .line 139
    return-void
.end method

.method public setTraceManager(Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 149
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    .line 150
    return-void
.end method
