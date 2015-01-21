.class public Lxj;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field final synthetic a:Lxg;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lxg;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lxj;->a:Lxg;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 109
    invoke-static {p1}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lxj;->b:Landroid/view/LayoutInflater;

    .line 110
    invoke-static {p1}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lxj;->a:Landroid/view/LayoutInflater;

    .line 111
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 348
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    .line 213
    if-nez p4, :cond_0

    .line 214
    new-instance v1, Lxh;

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-direct {v1, v0}, Lxh;-><init>(Lxg;)V

    .line 215
    iget-object v0, p0, Lxj;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 216
    const v0, 0x7f070021

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lxh;->b:Landroid/widget/Button;

    .line 217
    const v0, 0x7f070022

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lxh;->a:Landroid/widget/Button;

    .line 219
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 229
    :goto_0
    iget-object v1, v0, Lxh;->b:Landroid/widget/Button;

    new-instance v2, Lxl;

    invoke-direct {v2, p0, p1}, Lxl;-><init>(Lxj;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, v0, Lxh;->a:Landroid/widget/Button;

    new-instance v1, Lxn;

    invoke-direct {v1, p0, p1}, Lxn;-><init>(Lxj;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-object p4

    .line 221
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxh;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    .line 327
    :cond_0
    iget-object v0, p0, Lxj;->a:Lxg;

    iget-object v1, p0, Lxj;->a:Lxg;

    invoke-static {v1}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 344
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    if-nez p3, :cond_0

    .line 117
    new-instance v3, Lxi;

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-direct {v3, v0}, Lxi;-><init>(Lxg;)V

    .line 119
    iget-object v0, p0, Lxj;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 120
    const v0, 0x7f07001a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lxi;->a:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f07001e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lxi;->a:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f07001f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lxi;->b:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f070020

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v3, Lxi;->a:Landroid/widget/ProgressBar;

    .line 124
    const v0, 0x7f07001c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lxi;->b:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f07001b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v3, Lxi;->a:Landroid/widget/LinearLayout;

    .line 126
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_0
    :try_start_0
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v1

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 135
    if-nez v5, :cond_1

    move-object v0, v6

    .line 207
    :goto_1
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxi;

    move-object v3, v0

    move-object v6, p3

    goto :goto_0

    .line 136
    :cond_1
    :try_start_1
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v4

    .line 137
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v0, v0, Lwn;->b:I

    if-nez v0, :cond_4

    .line 138
    if-nez v4, :cond_2

    move-object v0, v6

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lxu;->a(Lxw;)V

    .line 141
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->a(Ljava/lang/String;)Lxy;

    move-result-object v1

    .line 142
    if-nez v1, :cond_3

    iget-object v1, p0, Lxj;->a:Lxg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dpInfo is null======url is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lxg;->a(Lxg;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_1

    .line 143
    :cond_3
    iget-object v2, p0, Lxj;->a:Lxg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dpInfo is not null======url is "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lxj;->a:Lxg;

    iget v2, v1, Lxy;->a:I

    int-to-long v7, v2

    iget v1, v1, Lxy;->b:I

    int-to-long v1, v1

    invoke-static {v0, v7, v8, v1, v2}, Lxg;->a(Lxg;JJ)I

    move-result v0

    .line 147
    iget-object v1, v3, Lxi;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Lxu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, v3, Lxi;->b:Landroid/widget/ImageView;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v1, v3, Lxi;->b:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    move v1, v0

    .line 166
    :goto_2
    iget-object v0, p0, Lxj;->a:Lxg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APPICONURLTTT"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v2, v0, Lwn;->a:Ljava/lang/String;

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v0, v0, Lwn;->a:I

    iget-object v7, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    invoke-static {v2, v0, v7}, Lwo;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lxj;->a:Lxg;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iConKey is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 169
    invoke-static {v0}, Lwo;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    iget-object v2, v3, Lxi;->a:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_3
    iget-object v0, v3, Lxi;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, v3, Lxi;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 178
    iget-object v7, v3, Lxi;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lxk;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lxk;-><init>(Lxj;ILxi;Lxu;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    move-object v0, v6

    .line 207
    goto/16 :goto_1

    .line 151
    :cond_4
    iget-object v0, p0, Lxj;->a:Lxg;

    iget-object v1, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 152
    iget-object v0, v3, Lxi;->a:Landroid/widget/TextView;

    iget-object v1, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lxj;->a:Lxg;

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v0, v0, Lwn;->d:I

    int-to-long v7, v0

    iget-object v0, p0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v0, v0, Lwn;->c:I

    int-to-long v9, v0

    invoke-static {v1, v7, v8, v9, v10}, Lxg;->a(Lxg;JJ)I

    move-result v0

    .line 156
    iget v1, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 157
    iget-object v1, p0, Lxj;->a:Lxg;

    const-string v2, "set button text button_prepare_downloading"

    invoke-static {v1, v2}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 158
    iget-object v1, v3, Lxi;->b:Landroid/widget/ImageView;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v1, v3, Lxi;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    move v1, v0

    goto/16 :goto_2

    .line 161
    :cond_5
    iget-object v1, p0, Lxj;->a:Lxg;

    const-string v2, "set button text button_resume_downloading"

    invoke-static {v1, v2}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 162
    iget-object v1, v3, Lxi;->b:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v1, v3, Lxi;->b:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    move v1, v0

    goto/16 :goto_2

    .line 173
    :cond_6
    iget-object v0, v3, Lxi;->a:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 203
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method
