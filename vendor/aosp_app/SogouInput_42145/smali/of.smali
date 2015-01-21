.class public Lof;
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
    .line 1096
    iput-object p1, p0, Lof;->a:Lnr;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1098
    const/4 v0, 0x2

    iput v0, p0, Lof;->a:I

    .line 1099
    const/4 v0, 0x0

    iput v0, p0, Lof;->b:I

    .line 1100
    const/4 v0, 0x1

    iput v0, p0, Lof;->c:I

    .line 1202
    new-instance v0, Log;

    invoke-direct {v0, p0}, Log;-><init>(Lof;)V

    iput-object v0, p0, Lof;->a:Landroid/view/View$OnClickListener;

    .line 1234
    new-instance v0, Loh;

    invoke-direct {v0, p0}, Loh;-><init>(Lof;)V

    iput-object v0, p0, Lof;->a:Lng;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1105
    const/4 v0, 0x0

    .line 1106
    iget-object v1, p0, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1109
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1116
    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1118
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
    .line 1125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 1133
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1147
    if-nez p2, :cond_0

    .line 1148
    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1149
    new-instance v1, Lok;

    iget-object v0, p0, Lof;->a:Lnr;

    invoke-direct {v1, v0, v2}, Lok;-><init>(Lnr;Lns;)V

    .line 1150
    const v0, 0x7f070086

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    .line 1151
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1156
    :goto_0
    invoke-virtual {p0, p1}, Lof;->getItemViewType(I)I

    move-result v0

    .line 1157
    packed-switch v0, :pswitch_data_0

    .line 1197
    :goto_1
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 1198
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lof;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    return-object p2

    .line 1153
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lok;

    move-object v1, v0

    goto :goto_0

    .line 1170
    :pswitch_0
    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02014f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1171
    iget-object v2, p0, Lof;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1172
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1173
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1174
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1175
    new-array v2, v6, [I

    invoke-virtual {v3, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1176
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1177
    iget-object v2, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    sget v2, Lnr;->b:I

    sget v3, Lnr;->b:I

    sget v4, Lnr;->b:I

    sget v5, Lnr;->b:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1180
    iget-object v0, v1, Lok;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1182
    iget-object v0, p0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnh;

    .line 1183
    iget-object v0, v0, Lnh;->e:Ljava/lang/String;

    .line 1184
    iget-object v2, p0, Lof;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lnb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnb;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1185
    if-eqz v2, :cond_1

    .line 1186
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lof;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1187
    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1188
    iget-object v2, v1, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1190
    :cond_1
    iget-object v2, v1, Lok;->a:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1191
    iget-object v2, p0, Lof;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lnb;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lof;->a:Lng;

    invoke-virtual {v2, v3, v0, v4}, Lnb;->a(Ljava/lang/Integer;Ljava/lang/String;Lng;)V

    goto/16 :goto_1

    .line 1157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x2

    return v0
.end method
