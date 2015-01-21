.class Lcom/mediatek/bluetooth/bip/BipService$6;
.super Ljava/lang/Object;
.source "BipService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/bip/BipService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$6;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$6;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$3400(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
