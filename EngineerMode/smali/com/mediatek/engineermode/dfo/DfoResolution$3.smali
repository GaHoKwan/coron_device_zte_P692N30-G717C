.class Lcom/mediatek/engineermode/dfo/DfoResolution$3;
.super Ljava/lang/Object;
.source "DfoResolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/dfo/DfoResolution;->setResolution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    .line 220
    new-instance v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;-><init>()V

    .line 222
    .local v0, req:Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;
    invoke-static {}, Lcom/mediatek/engineermode/dfo/DfoNative;->init()I

    .line 223
    const-string v4, "LCM_FAKE_HEIGHT"

    iput-object v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->name:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mHeight:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1300(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->value:I

    .line 225
    iput v6, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->partition:I

    .line 226
    iput v6, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->save:I

    .line 227
    invoke-static {v0}, Lcom/mediatek/engineermode/dfo/DfoNative;->write(Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;)I

    move-result v2

    .line 228
    .local v2, retHeight:I
    const-string v4, "LCM_FAKE_WIDTH"

    iput-object v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->name:Ljava/lang/String;

    .line 229
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mWidth:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->value:I

    .line 230
    invoke-static {v0}, Lcom/mediatek/engineermode/dfo/DfoNative;->write(Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;)I

    move-result v3

    .line 231
    .local v3, retWidth:I
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mHeight:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1300(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mWidth:I
    invoke-static {v5}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/dfo/DfoNative;->propertySet(II)I

    move-result v1

    .line 232
    .local v1, ret:I
    invoke-static {}, Lcom/mediatek/engineermode/dfo/DfoNative;->deinit()I

    .line 234
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1500(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/WallpaperManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1500(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->resetWallpaper()V

    .line 238
    :cond_0
    sget v4, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    if-ne v2, v4, :cond_1

    sget v4, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    if-ne v3, v4, :cond_1

    sget v4, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    if-ne v1, v4, :cond_1

    .line 240
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1200(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$3;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1200(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
