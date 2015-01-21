.class public abstract Lcom/android/magicsmoke/RenderScriptScene;
.super Ljava/lang/Object;
.source "RenderScriptScene.java"


# instance fields
.field protected mHeight:I

.field protected mIsStarted:Z

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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/magicsmoke/RenderScriptScene;->mWidth:I

    .line 37
    iput p2, p0, Lcom/android/magicsmoke/RenderScriptScene;->mHeight:I

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract createScript()Landroid/renderscript/ScriptC;
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mHeight:I

    return v0
.end method

.method public getRS()Landroid/renderscript/RenderScriptGL;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getScript()Landroid/renderscript/ScriptC;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mWidth:I

    return v0
.end method

.method public init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V
    .locals 1
    .parameter "rs"
    .parameter "res"
    .parameter "isPreview"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 42
    iput-object p2, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    .line 43
    iput-boolean p3, p0, Lcom/android/magicsmoke/RenderScriptScene;->mPreview:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/magicsmoke/RenderScriptScene;->createScript()Landroid/renderscript/ScriptC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    .line 45
    return-void
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mPreview:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public resize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/magicsmoke/RenderScriptScene;->mWidth:I

    .line 85
    iput p2, p0, Lcom/android/magicsmoke/RenderScriptScene;->mHeight:I

    .line 86
    return-void
.end method

.method public setOffset(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 90
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/magicsmoke/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mIsStarted:Z

    .line 81
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .parameter "forReal"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mIsStarted:Z

    .line 76
    return-void
.end method
