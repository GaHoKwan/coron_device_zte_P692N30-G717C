.class public Lwe;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1377
    iput-object p1, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 1381
    const/4 v0, 0x0

    .line 1382
    iget-object v1, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1383
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1385
    :cond_0
    iget-object v1, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    .line 1386
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1391
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1400
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1405
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    .line 1407
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1408
    :cond_0
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1409
    new-instance v1, Lwf;

    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {v1, v0, v3}, Lwf;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;Lvl;)V

    .line 1410
    const v0, 0x7f070122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lwf;->a:Landroid/widget/ImageView;

    .line 1411
    const v0, 0x7f070123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lwf;->a:Landroid/widget/LinearLayout;

    .line 1412
    const v0, 0x7f070125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lwf;->b:Landroid/widget/LinearLayout;

    .line 1413
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1418
    :goto_0
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1473
    :cond_1
    :goto_1
    return-object p2

    .line 1415
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf;

    move-object v1, v0

    goto :goto_0

    .line 1420
    :pswitch_0
    iget-object v0, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1421
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->an:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1423
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    sget v0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:I

    invoke-static {v2, v0}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1427
    iget-object v2, v1, Lwf;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1428
    iget-object v2, v1, Lwf;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1429
    iget-object v2, v1, Lwf;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1430
    iget-object v1, v1, Lwf;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lwe;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1434
    :pswitch_1
    iget-object v0, v1, Lwf;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1435
    iget-object v0, v1, Lwf;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1436
    iget-object v0, v1, Lwf;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1439
    :pswitch_2
    iget-object v0, v1, Lwf;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1440
    iget-object v0, v1, Lwf;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1441
    iget-object v0, v1, Lwf;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
