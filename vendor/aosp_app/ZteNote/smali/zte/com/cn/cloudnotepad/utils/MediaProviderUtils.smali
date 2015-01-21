.class public Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "path"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;->mPath:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;-><init>(Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .local v0, helper:Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils$MediaScannerHelper;->doScan()V

    .line 20
    return-void
.end method
