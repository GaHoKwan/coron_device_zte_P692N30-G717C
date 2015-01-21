.class Lcom/android/mms/ui/WallpaperChooserDialogFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/ui/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WallpaperChooserDialogFragment;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/mms/ui/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/android/mms/ui/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 241
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 242
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/android/mms/ui/WallpaperChooserDialogFragment;

    #getter for: Lcom/android/mms/ui/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/WallpaperChooserDialogFragment;->access$100(Lcom/android/mms/ui/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 253
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 259
    if-nez p2, :cond_1

    .line 260
    iget-object v4, p0, Lcom/android/mms/ui/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040078

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 265
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x7f0f01a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 267
    .local v0, image:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/mms/ui/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/android/mms/ui/WallpaperChooserDialogFragment;

    #getter for: Lcom/android/mms/ui/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/WallpaperChooserDialogFragment;->access$100(Lcom/android/mms/ui/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 268
    .local v2, thumbRes:I
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 270
    .local v1, thumbDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 271
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 274
    :cond_0
    return-object v3

    .line 262
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumbRes:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0
.end method
