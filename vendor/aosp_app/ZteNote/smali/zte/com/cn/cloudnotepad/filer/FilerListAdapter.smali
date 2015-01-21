.class public Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 49
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;

    .line 60
    .local v2, holder:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;
    :goto_0
    iget-object v6, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->name:Landroid/widget/TextView;

    sget-object v5, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Ljava/io/File;

    sget-object v6, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    sget-object v5, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v1, file:Ljava/io/File;
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020072

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_0
    :goto_1
    return-object p2

    .line 52
    .end local v1           #file:Ljava/io/File;
    .end local v2           #holder:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;
    :cond_1
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;-><init>(Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;)V

    .line 54
    .restart local v2       #holder:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;
    const v5, 0x7f06003a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->name:Landroid/widget/TextView;

    .line 55
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->size:Landroid/widget/TextView;

    .line 56
    const v5, 0x7f06003b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->time:Landroid/widget/TextView;

    .line 57
    const v5, 0x7f06003d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->size:Landroid/widget/TextView;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->time:Landroid/widget/TextView;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getScrollingState()Z

    move-result v3

    .line 74
    .local v3, isScrolling:Z
    sget-object v5, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    iget-object v6, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v1, v6, v7}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->loadDrawable(ZLjava/io/File;Landroid/widget/ImageView;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, tag:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    if-nez v0, :cond_3

    .line 78
    iget-object v6, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getFilerListIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 80
    :cond_3
    iget-object v5, v2, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method
