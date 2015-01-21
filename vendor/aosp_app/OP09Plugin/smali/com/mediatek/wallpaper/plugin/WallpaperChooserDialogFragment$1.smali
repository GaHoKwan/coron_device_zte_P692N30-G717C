.class Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;

.field final synthetic val$gallery:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;->this$0:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;->this$0:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;

    iget-object v1, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    #calls: Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->selectWallpaper(I)V
    invoke-static {v0, v1}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->access$000(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;I)V

    .line 168
    return-void
.end method
