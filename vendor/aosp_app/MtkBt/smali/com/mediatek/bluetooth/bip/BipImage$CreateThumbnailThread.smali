.class Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;
.super Ljava/lang/Thread;
.source "BipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateThumbnailThread"
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public cr:Landroid/content/ContentResolver;

.field public imageuri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipImage;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bip/BipImage;Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "context"
    .parameter "contentResolver"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->this$0:Lcom/mediatek/bluetooth/bip/BipImage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->imageuri:Landroid/net/Uri;

    .line 286
    iput-object p3, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->c:Landroid/content/Context;

    .line 287
    iput-object p4, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->cr:Landroid/content/ContentResolver;

    .line 288
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->this$0:Lcom/mediatek/bluetooth/bip/BipImage;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->imageuri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;->cr:Landroid/content/ContentResolver;

    #calls: Lcom/mediatek/bluetooth/bip/BipImage;->createImageThumbnail(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/bip/BipImage;->access$000(Lcom/mediatek/bluetooth/bip/BipImage;Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "BipImage"

    const-string v1, "Create thumbnail success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v0, "BipImage"

    const-string v1, "Create thumbnail fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
