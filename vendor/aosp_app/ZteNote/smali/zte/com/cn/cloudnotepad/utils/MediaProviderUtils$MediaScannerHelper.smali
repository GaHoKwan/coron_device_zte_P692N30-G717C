.class public Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerHelper"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field private mScanner:Landroid/media/MediaScannerConnection;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "path"

    .prologue
    .line 31
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->this$0:Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->mScanner:Landroid/media/MediaScannerConnection;

    .line 30
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doScan()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->mScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 49
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->mScanner:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->mScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 45
    return-void
.end method
