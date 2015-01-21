.class Lcom/zte/update/ui/page/AppInfoPageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppInfoPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/page/AppInfoPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appIconImg:Landroid/widget/ImageView;

.field appLable:Landroid/widget/TextView;

.field appSize:Landroid/widget/TextView;

.field appSubInfo:Landroid/view/View;

.field appVersionName:Landroid/widget/TextView;

.field cacheAppInfo:Lcom/zte/update/data/CacheAppInfo;

.field downloadInfo:Lcom/zte/update/data/DownloadInfo;

.field mainKey:Ljava/lang/Object;

.field optBtn:Landroid/widget/ImageButton;

.field percent:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field progressInfo:Landroid/view/View;

.field progressStatus:Landroid/widget/TextView;

.field requestInfo:Lcom/zte/update/data/RequestAppInfo;

.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoPageAdapter;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoPageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoPageAdapter$ViewHolder;->this$0:Lcom/zte/update/ui/page/AppInfoPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
