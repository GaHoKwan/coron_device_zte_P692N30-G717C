.class public Laiq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final a:I

.field a:Lahx;

.field final synthetic a:Laia;

.field a:Landroid/view/View$OnClickListener;

.field final b:I

.field final c:I

.field private d:I


# direct methods
.method public constructor <init>(Laia;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1094
    iput-object p1, p0, Laiq;->a:Laia;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1089
    iput v1, p0, Laiq;->d:I

    .line 1090
    const/4 v0, 0x2

    iput v0, p0, Laiq;->a:I

    .line 1091
    iput v1, p0, Laiq;->b:I

    .line 1092
    const/4 v0, 0x1

    iput v0, p0, Laiq;->c:I

    .line 1249
    new-instance v0, Lair;

    invoke-direct {v0, p0}, Lair;-><init>(Laiq;)V

    iput-object v0, p0, Laiq;->a:Landroid/view/View$OnClickListener;

    .line 1377
    new-instance v0, Lais;

    invoke-direct {v0, p0}, Lais;-><init>(Laiq;)V

    iput-object v0, p0, Laiq;->a:Lahx;

    .line 1096
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1214
    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1215
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1217
    :cond_0
    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    add-int/lit8 v0, v0, 0x1

    .line 1220
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1246
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 1226
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1227
    const/4 v0, 0x0

    .line 1229
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
    .line 1099
    iget-object v0, p0, Laiq;->a:Laia;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laia;->a(Laia;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0, p1}, Laiq;->getItemViewType(I)I

    move-result v0

    .line 1102
    packed-switch v0, :pswitch_data_0

    .line 1208
    :goto_0
    return-object p2

    .line 1104
    :pswitch_0
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1111
    :pswitch_1
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_1
    iput v0, p0, Laiq;->d:I

    .line 1113
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1114
    :cond_1
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1115
    new-instance v1, Laiu;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Laiu;-><init>(Laib;)V

    .line 1116
    const v0, 0x7f070037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laiu;->a:Landroid/widget/ImageView;

    .line 1117
    const v0, 0x7f070038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiu;->a:Landroid/widget/TextView;

    .line 1118
    const v0, 0x7f07003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiu;->b:Landroid/widget/TextView;

    .line 1119
    const v0, 0x7f070039

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiu;->c:Landroid/widget/TextView;

    .line 1120
    const v0, 0x7f07003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Laiu;->a:Landroid/widget/LinearLayout;

    .line 1121
    const v0, 0x7f07003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laiu;->b:Landroid/widget/ImageView;

    .line 1122
    const v0, 0x7f07003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiu;->d:Landroid/widget/TextView;

    .line 1123
    const v0, 0x7f070019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiu;->e:Landroid/widget/TextView;

    .line 1124
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    .line 1128
    :goto_2
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laiq;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 1129
    iget-object v0, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    iget v1, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    iget-object v2, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lahr;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Lahr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lahr;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_4

    .line 1133
    iget-object v1, v7, Laiu;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1138
    :goto_3
    iget-object v0, v7, Laiu;->a:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, v7, Laiu;->b:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, v7, Laiu;->c:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget v0, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    packed-switch v0, :pswitch_data_1

    .line 1201
    :goto_4
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Laiq;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1202
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laiq;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    move v0, p1

    .line 1111
    goto/16 :goto_1

    .line 1126
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    move-object v7, v0

    goto :goto_2

    .line 1135
    :cond_4
    iget-object v0, v7, Laiu;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1136
    iget-object v0, p0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->f:Ljava/lang/String;

    iget-object v3, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    iget v4, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Laiq;->a:Lahx;

    invoke-virtual/range {v0 .. v5}, Lahr;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lahx;)V

    goto :goto_3

    .line 1143
    :pswitch_2
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1144
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1145
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1146
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1150
    :pswitch_3
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1151
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1152
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1153
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1157
    :pswitch_4
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1158
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1159
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1160
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1164
    :pswitch_5
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1165
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1166
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1167
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1171
    :pswitch_6
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1172
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1173
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1174
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1178
    :pswitch_7
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1179
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1180
    const-string v0, "0%"

    .line 1181
    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Laja;

    move-result-object v1

    iget-object v2, v6, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laja;->a(Ljava/lang/String;)Lajb;

    move-result-object v1

    .line 1182
    if-eqz v1, :cond_5

    .line 1183
    iget v0, v1, Lajb;->a:I

    .line 1184
    iget v1, v1, Lajb;->b:I

    .line 1185
    iget-object v2, p0, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Laja;

    move-result-object v2

    int-to-long v3, v1

    int-to-long v0, v0

    invoke-virtual {v2, v3, v4, v0, v1}, Laja;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1187
    :cond_5
    iget-object v1, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    iget-object v1, v7, Laiu;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1192
    :pswitch_8
    iget-object v0, v7, Laiu;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1193
    iget-object v0, v7, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1194
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1195
    iget-object v0, v7, Laiu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v0, v7, Laiu;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1141
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x2

    return v0
.end method
