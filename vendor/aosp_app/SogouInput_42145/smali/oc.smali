.class public Loc;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:I

.field a:Landroid/view/View$OnClickListener;

.field a:Lng;

.field final synthetic a:Lnr;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lnr;)V
    .locals 1
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Loc;->a:Lnr;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 921
    const/4 v0, 0x2

    iput v0, p0, Loc;->a:I

    .line 922
    const/4 v0, 0x0

    iput v0, p0, Loc;->b:I

    .line 923
    const/4 v0, 0x1

    iput v0, p0, Loc;->c:I

    .line 1053
    new-instance v0, Lod;

    invoke-direct {v0, p0}, Lod;-><init>(Loc;)V

    iput-object v0, p0, Loc;->a:Landroid/view/View$OnClickListener;

    .line 1067
    new-instance v0, Loe;

    invoke-direct {v0, p0}, Loe;-><init>(Loc;)V

    iput-object v0, p0, Loc;->a:Lng;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 943
    iget-object v1, p0, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 944
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 946
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 952
    iget-object v1, p0, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge p1, v1, :cond_0

    .line 953
    iget-object v1, p0, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->i(Lnr;)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 954
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 961
    :cond_0
    :goto_0
    return-object v0

    .line 955
    :cond_1
    iget-object v1, p0, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->i(Lnr;)I

    move-result v1

    if-le p1, v1, :cond_0

    .line 956
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 968
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 927
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->i(Lnr;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 928
    const/4 v0, 0x0

    .line 930
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f02014f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 976
    if-nez p2, :cond_0

    .line 980
    new-instance p2, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 981
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    sget v1, Lnr;->v:I

    sget v2, Lnr;->w:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 982
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    sget v0, Lnr;->x:I

    sget v1, Lnr;->y:I

    invoke-virtual {p2, v6, v0, v6, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 984
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 985
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lnr;->z:I

    sget v3, Lnr;->z:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 986
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    sget v0, Lnr;->t:I

    sget v2, Lnr;->t:I

    sget v3, Lnr;->t:I

    sget v4, Lnr;->t:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 988
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 989
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 991
    new-instance v0, Lok;

    iget-object v2, p0, Loc;->a:Lnr;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lok;-><init>(Lnr;Lns;)V

    .line 992
    iput-object v1, v0, Lok;->a:Landroid/widget/ImageView;

    .line 994
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 999
    :goto_0
    invoke-virtual {p0, p1}, Loc;->getItemViewType(I)I

    move-result v0

    .line 1000
    packed-switch v0, :pswitch_data_0

    .line 1050
    :goto_1
    return-object p2

    .line 996
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lok;

    move-object v1, v0

    goto :goto_0

    .line 1002
    :pswitch_0
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1003
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 1007
    :pswitch_1
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1008
    iget-object v2, p0, Loc;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1009
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1010
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1011
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1012
    new-array v2, v6, [I

    invoke-virtual {v3, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1013
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1014
    iget-object v2, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    sget v2, Lnr;->t:I

    sget v3, Lnr;->t:I

    sget v4, Lnr;->t:I

    sget v5, Lnr;->t:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1017
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1019
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->i(Lnr;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1020
    add-int/lit8 p1, p1, -0x1

    .line 1024
    :cond_1
    iget-object v0, p0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 1037
    iget-object v2, p0, Loc;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emoji/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lna;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lnr;->A:I

    invoke-static {v2, v0, v3}, Lays;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1038
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Loc;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1039
    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1040
    iget-object v2, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1042
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 1043
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Loc;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x2

    return v0
.end method
