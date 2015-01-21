.class public Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;
.super Landroid/widget/BaseAdapter;
.source "GallaryChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;
    }
.end annotation


# instance fields
.field private mGallayChooseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


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
            "Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mGallayChooseList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;>;"
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 18
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mGallayChooseList:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 23
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mGallayChooseList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "paramView"
    .parameter "paramViewGroup"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    iput-object v4, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03006d

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;-><init>(Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    .line 47
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    const v1, 0x7f0e0101

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageView:Landroid/widget/ImageView;

    .line 48
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    const v1, 0x7f0e010e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageChecked:Landroid/widget/ImageView;

    .line 49
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    const v1, 0x7f0e010d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->videoPlayImage:Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    .line 54
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 56
    .local v0, localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :goto_0
    iget v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    if-ne v1, v3, :cond_3

    .line 68
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->videoPlayImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_1
    iget-boolean v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    if-ne v1, v3, :cond_4

    .line 74
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageChecked:Landroid/widget/ImageView;

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    :goto_2
    return-object p2

    .line 59
    :cond_1
    iget v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    if-ne v1, v3, :cond_2

    .line 60
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->videoPlayImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageChecked:Landroid/widget/ImageView;

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
