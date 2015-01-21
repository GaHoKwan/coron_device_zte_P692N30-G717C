.class Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;->val$id:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 94
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;->val$id:I

    invoke-virtual {v2, v3, p1}, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->setWallpaper(ILandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, tr:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, toastText:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
