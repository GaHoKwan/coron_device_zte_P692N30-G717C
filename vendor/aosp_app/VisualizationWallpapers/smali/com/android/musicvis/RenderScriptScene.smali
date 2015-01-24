.class public abstract Lcom/android/musicvis/RenderScriptScene;
.super Ljava/lang/Object;
.source "RenderScriptScene.java"


# instance fields
.field protected mHeight:I

.field protected mPreview:Z

.field protected mRS:Landroid/renderscript/RenderScriptGL;

.field protected mResources:Landroid/content/res/Resources;

.field protected mScript:Landroid/renderscript/ScriptC;

.field protected mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    .line 36
    iput p2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract createScript()Landroid/renderscript/ScriptC;
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    return v0
.end method

.method public getRS()Landroid/renderscript/RenderScriptGL;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getScript()Landroid/renderscript/ScriptC;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    return v0
.end method

.method public init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V
    .locals 1
    .parameter "rs"
    .parameter "res"
    .parameter "isPreview"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 41
    iput-object p2, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    .line 42
    iput-boolean p3, p0, Lcom/android/musicvis/RenderScriptScene;->mPreview:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/musicvis/RenderScriptScene;->createScript()Landroid/renderscript/ScriptC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    .line 44
    return-void
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/musicvis/RenderScriptScene;->mPreview:Z

    return v0
.end method

.method public resize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    .line 82
    iput p2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    .line 83
    return-void
.end method

.method public setOffset(FFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 87
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/musicvis/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 78
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 74
    return-void
.end method