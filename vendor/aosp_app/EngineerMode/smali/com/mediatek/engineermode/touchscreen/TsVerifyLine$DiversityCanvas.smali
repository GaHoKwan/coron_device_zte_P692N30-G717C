.class Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;
.super Landroid/view/SurfaceView;
.source "TsVerifyLine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiversityCanvas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;
    }
.end annotation


# instance fields
.field mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;

.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    .line 238
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;

    .line 239
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 240
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 241
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 245
    const-string v0, "EM/TouchScreen/VL"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 249
    const-string v0, "EM/TouchScreen/VL"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRun:Z

    .line 252
    new-instance v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;-><init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;Landroid/view/SurfaceHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;

    .line 253
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRun:Z

    .line 258
    const-string v0, "EM/TouchScreen/VL"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method
