.class public Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;
.super Landroid/widget/BaseAdapter;
.source "GallaryBucketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$1;,
        Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;
    }
.end annotation


# instance fields
.field private mGallayBucketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

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
            "Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mGallayBucketList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;>;"
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 20
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mGallayBucketList:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mGallayBucketList:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "paramView"
    .parameter "paramViewGroup"

    .prologue
    const/4 v3, 0x0

    .line 45
    iput-object v3, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030056

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    invoke-direct {v1, p0, v3}, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;-><init>(Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    .line 49
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    const v1, 0x7f0e0103

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->name:Landroid/widget/TextView;

    .line 50
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    const v1, 0x7f0e0104

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->description:Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    const v1, 0x7f0e0101

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->imageView:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    .line 56
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .line 58
    .local v0, localGallayBucketItem:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->description:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    :goto_0
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->mItem:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
