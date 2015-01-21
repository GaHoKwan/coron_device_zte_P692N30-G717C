.class public Lcn/com/zte/yp/SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

.field private layoutId:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/zte/yp/YpContact;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/com/zte/yp/YpContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    .line 31
    iput-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->mBitmapRefs:Ljava/util/ArrayList;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    const v0, 0x7f030014

    iput v0, p0, Lcn/com/zte/yp/SearchListAdapter;->layoutId:I

    .line 38
    iput-object p2, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcn/com/zte/yp/SearchListAdapter;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/yp/SearchListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setSearchResultView(ILandroid/view/View;)V
    .locals 5
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 84
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/zte/yp/YpContact;

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->getPhoto()[B

    move-result-object v2

    .line 85
    .local v2, photo:[B
    if-eqz v2, :cond_0

    .line 86
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->mBitmapRefs:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    iget-object v3, v3, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/zte/yp/YpContact;

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, number:Ljava/lang/String;
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    iget-object v3, v3, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    iget-object v4, v3, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/zte/yp/YpContact;

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    iget-object v3, v3, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->callImg:Landroid/widget/ImageView;

    new-instance v4, Lcn/com/zte/yp/SearchListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcn/com/zte/yp/SearchListAdapter$1;-><init>(Lcn/com/zte/yp/SearchListAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void

    .line 91
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    iget-object v3, v3, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    invoke-direct {v0}, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;-><init>()V

    iput-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    .line 68
    iget-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcn/com/zte/yp/SearchListAdapter;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    iget-object v1, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    const v0, 0x7f0a0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    const v0, 0x7f0a0035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    const v0, 0x7f0a0032

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    const v0, 0x7f0a0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;->callImg:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/com/zte/yp/SearchListAdapter;->setSearchResultView(ILandroid/view/View;)V

    .line 80
    return-object p2

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    iput-object v0, p0, Lcn/com/zte/yp/SearchListAdapter;->holder:Lcn/com/zte/yp/SearchListAdapter$ViewHolder;

    goto :goto_0
.end method
