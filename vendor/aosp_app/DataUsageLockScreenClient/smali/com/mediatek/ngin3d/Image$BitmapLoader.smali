.class Lcom/mediatek/ngin3d/Image$BitmapLoader;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoader"
.end annotation


# instance fields
.field private final mSource:Lcom/mediatek/ngin3d/presentation/ImageSource;

.field final synthetic this$0:Lcom/mediatek/ngin3d/Image;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/Image;Lcom/mediatek/ngin3d/presentation/ImageSource;)V
    .locals 0
    .parameter
    .parameter "src"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/mediatek/ngin3d/Image$BitmapLoader;->this$0:Lcom/mediatek/ngin3d/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p2, p0, Lcom/mediatek/ngin3d/Image$BitmapLoader;->mSource:Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 523
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 526
    iget-object v1, p0, Lcom/mediatek/ngin3d/Image$BitmapLoader;->mSource:Lcom/mediatek/ngin3d/presentation/ImageSource;

    iget-object v0, v1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;

    .line 527
    .local v0, generator:Lcom/mediatek/ngin3d/presentation/BitmapGenerator;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->cacheBitmap()V

    .line 528
    iget-object v1, p0, Lcom/mediatek/ngin3d/Image$BitmapLoader;->this$0:Lcom/mediatek/ngin3d/Image;

    sget-object v2, Lcom/mediatek/ngin3d/Image;->PROP_IMG_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v3, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 529
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 530
    return-void
.end method
