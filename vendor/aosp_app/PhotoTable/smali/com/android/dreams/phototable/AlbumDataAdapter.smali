.class public Lcom/android/dreams/phototable/AlbumDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/AlbumDataAdapter$1;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALBUM_SET:Ljava/lang/String; = "Enabled Album Set"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I

.field private final mListener:Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

.field private final mSettings:Lcom/android/dreams/phototable/AlbumSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "settings"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 52
    invoke-static {p2}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    .line 53
    iput p3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mLayout:I

    .line 54
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    new-instance v3, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;-><init>(Lcom/android/dreams/phototable/AlbumDataAdapter;Lcom/android/dreams/phototable/AlbumDataAdapter$1;)V

    iput-object v3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mListener:Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

    .line 57
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 58
    .local v2, validAlbumIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 59
    .local v0, albumData:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iget-object v3, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .end local v0           #albumData:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_0
    iget-object v3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    invoke-virtual {v3, v2}, Lcom/android/dreams/phototable/AlbumSettings;->pruneObsoleteSettings(Ljava/util/Collection;)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/dreams/phototable/AlbumDataAdapter;)Lcom/android/dreams/phototable/AlbumSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 66
    move-object v2, p2

    .line 67
    .local v2, item:Landroid/view/View;
    if-nez v2, :cond_0

    .line 68
    iget-object v6, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 72
    .local v1, data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    const v6, 0x7f0b0005

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, vCheckBox:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v6, v4, Landroid/widget/CheckBox;

    if-eqz v6, :cond_1

    move-object v0, v4

    .line 74
    check-cast v0, Landroid/widget/CheckBox;

    .line 75
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    iget-object v7, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 76
    const v6, 0x7f0b0003

    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    :cond_1
    const v6, 0x7f0b0004

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 80
    .local v5, vTextView:Landroid/view/View;
    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 81
    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, textView:Landroid/widget/TextView;
    iget-object v6, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mListener:Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v2
.end method
