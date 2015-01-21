.class Lcom/zte/retrieve/service/RetrieveLockView$8;
.super Ljava/lang/Object;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/RetrieveLockView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$8;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$8;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$8;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    invoke-virtual {v1, p1, p2}, Lcom/zte/retrieve/service/RetrieveLockView;->getPreviewFrame([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$21(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/graphics/Bitmap;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreviewFrame data is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",the length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string v1, ",mBmpPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$8;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 504
    return-void
.end method
