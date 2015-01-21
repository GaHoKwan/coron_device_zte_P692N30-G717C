.class public Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final NOTE_BG_NUMBER:I = 0x8

.field private static final START_WALLPAPER_PICK_RESULT:I = 0x6


# instance fields
.field lastView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->lastView:Landroid/view/View;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getWallPaperThumbnailWidth(Landroid/content/Context;)I

    move-result v1

    .line 40
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getWallPaperThumbnailHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 69
    move v1, p1

    .line 70
    .local v1, id:I
    if-nez p2, :cond_0

    .line 71
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030032

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;-><init>(Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;)V

    .line 73
    .local v0, holder:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;
    const v2, 0x7f0600d3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    .line 74
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    if-nez p1, :cond_1

    .line 81
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    const v3, 0x7f0200b5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :goto_1
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;

    invoke-direct {v3, p0, v1}, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object p2

    .line 77
    .end local v0           #holder:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;

    .restart local v0       #holder:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;
    goto :goto_0

    .line 82
    :cond_1
    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    .line 83
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    const v3, 0x7f0200c2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    sget-object v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->Predefined_Wallpaper_ResIds:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected setWallpaper(ILandroid/view/View;)V
    .locals 7
    .parameter "id"
    .parameter "view"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, wallpaper:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x8

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->lastView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->lastView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_2
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->lastView:Landroid/view/View;

    .line 121
    if-nez p1, :cond_3

    .line 122
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object v5, v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 124
    :cond_3
    if-ne p1, v6, :cond_4

    .line 126
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "image/*"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const/4 v4, 0x6

    invoke-virtual {v3, v1, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WallpaperListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open gallery failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0900fa

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    if-lez p1, :cond_0

    if-ge p1, v6, :cond_0

    .line 134
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->Wallpaper_ResIds:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    .line 136
    const-string v4, "zhangxue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "wallpaper="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->wallpaper:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
