.class public Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperListAdapter"

.field private static final VIDEO_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "com.mediatek.vlw"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->generatePlaceholderViews(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    .line 75
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;

    invoke-direct {v1, p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    return-object v0
.end method

.method private generatePlaceholderViews(I)Ljava/util/List;
    .locals 1
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;>;"
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 102
    if-nez p2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;)V

    .line 106
    .local v0, holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    const v2, 0x7f0a0002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f0a0001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .line 114
    .local v1, wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    iget-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 121
    iget-object v2, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_1
    return-object p2

    .line 110
    .end local v0           #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    .end local v1           #wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
    goto :goto_0
.end method
