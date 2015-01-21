.class public Lcom/mediatek/ngin3d/android/StageActivity;
.super Landroid/app/Activity;
.source "StageActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StageActivity"


# instance fields
.field protected mStage:Lcom/mediatek/ngin3d/Stage;

.field protected mStageView:Lcom/mediatek/ngin3d/android/StageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getStage()Lcom/mediatek/ngin3d/Stage;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStage:Lcom/mediatek/ngin3d/Stage;

    return-object v0
.end method

.method public getStageView()Lcom/mediatek/ngin3d/android/StageView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 157
    const-string v0, "StageActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    new-instance v0, Lcom/mediatek/ngin3d/android/StageView;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/android/StageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ngin3d/android/StageActivity;->onCreate(Landroid/os/Bundle;Lcom/mediatek/ngin3d/android/StageView;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 1
    .parameter "savedInstanceState"
    .parameter "stageViewId"

    .prologue
    .line 107
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ngin3d/android/StageActivity;->onCreate(Landroid/os/Bundle;Lcom/mediatek/ngin3d/android/StageView;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Lcom/mediatek/ngin3d/android/StageView;)V
    .locals 2
    .parameter "savedInstanceState"
    .parameter "stageView"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "StageActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p2, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    .line 124
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageView;->getStage()Lcom/mediatek/ngin3d/Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStage:Lcom/mediatek/ngin3d/Stage;

    .line 125
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->setCacheDir(Ljava/io/File;)V

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "StageActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageView;->onPause()V

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    const-string v0, "StageActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageActivity;->mStageView:Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageView;->onResume()V

    .line 146
    return-void
.end method
