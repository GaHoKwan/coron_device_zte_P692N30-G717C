.class public Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;,
        Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;,
        Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$ImageAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMBEDDED_KEY:Ljava/lang/String; = "WallpaperChooserDialogFragment.EMBEDDED_KEY"

.field private static final TAG:Ljava/lang/String; = "WallpaperChooserDialogFragment"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawable:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    new-instance v0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-direct {v0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;)Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 9
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 228
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 230
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 231
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 235
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 236
    iget-object v7, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v7, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_1
    return-void
.end method

.method private cancelLoader()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 120
    :cond_0
    return-void
.end method

.method private findWallpapers()V
    .locals 5

    .prologue
    const v4, 0x7f05000c

    const/16 v3, 0x18

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 221
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v4}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 224
    const v2, 0x7f050008

    invoke-direct {p0, v1, v0, v2}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method public static newInstance()Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;-><init>()V

    .line 88
    .local v0, fragment:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 89
    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 182
    .local v1, wpm:Landroid/app/WallpaperManager;
    iget-object v2, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #wpm:Landroid/app/WallpaperManager;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    if-eqz p1, :cond_0

    const-string v0, "WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-direct {p0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 154
    iget-boolean v3, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz v3, :cond_0

    .line 155
    const v3, 0x7f030030

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const v3, 0x7f0b00c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 159
    .local v0, gallery:Landroid/widget/Gallery;
    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 160
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    new-instance v3, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    const v3, 0x7f0b00c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, setButton:Landroid/view/View;
    new-instance v3, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$1;-><init>(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .end local v0           #gallery:Landroid/widget/Gallery;
    .end local v1           #setButton:Landroid/view/View;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 137
    invoke-direct {p0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 138
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 128
    invoke-direct {p0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 129
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 197
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 205
    :cond_0
    new-instance v0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object v0, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mLoader:Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 206
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 108
    const-string v0, "WallpaperChooserDialogFragment.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/mediatek/wallpaper/plugin/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method
