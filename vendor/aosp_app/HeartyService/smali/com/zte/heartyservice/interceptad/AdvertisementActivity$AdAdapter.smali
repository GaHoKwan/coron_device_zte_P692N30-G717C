.class Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;
.super Landroid/widget/BaseAdapter;
.source "AdvertisementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/AdvertisementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->mContext:Landroid/content/Context;

    .line 249
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 250
    iput-object p2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->list:Ljava/util/List;

    .line 252
    iput-object p3, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->mContext:Landroid/content/Context;

    .line 254
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->getItem(I)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 268
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 273
    new-instance v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;

    invoke-direct {v2, v7}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;)V

    .line 274
    .local v2, holder:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->getItem(I)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v3

    .line 276
    .local v3, info:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    if-nez p2, :cond_0

    .line 277
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030010

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 278
    new-instance v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;

    .end local v2           #holder:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;
    invoke-direct {v2, v7}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;)V

    .line 281
    .restart local v2       #holder:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;
    const v5, 0x7f0e0004

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 282
    const v5, 0x7f0e0012

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 283
    const v5, 0x7f0e003a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->summary:Landroid/widget/TextView;

    .line 284
    const v5, 0x7f0e003b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->adblocked:Landroid/widget/TextView;

    .line 285
    const v5, 0x7f0e0011

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->blocked:Landroid/widget/ImageView;

    .line 287
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    :goto_0
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    iget-object v7, v3, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->getLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$700(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v3}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->getAdCount()I

    move-result v0

    .line 295
    .local v0, count:I
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    const v6, 0x7f0a04e7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, summary:Ljava/lang/String;
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isBlocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->adblocked:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->blocked:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, -0x77000001

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    :goto_1
    :try_start_0
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #getter for: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$800(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v3, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_2
    return-object p2

    .line 289
    .end local v0           #count:I
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;
    check-cast v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;

    .restart local v2       #holder:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;
    goto :goto_0

    .line 303
    .restart local v0       #count:I
    .restart local v4       #summary:Ljava/lang/String;
    :cond_1
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->adblocked:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->blocked:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v5, v2, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_1

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method
