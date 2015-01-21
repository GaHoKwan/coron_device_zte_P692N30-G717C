.class public Lxb;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field final synthetic a:Lwy;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lwy;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lxb;->a:Lwy;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 116
    invoke-static {p1}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lxb;->b:Landroid/view/LayoutInflater;

    .line 117
    invoke-static {p1}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lxb;->a:Landroid/view/LayoutInflater;

    .line 118
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    .line 256
    if-nez p4, :cond_0

    .line 257
    new-instance v1, Lwz;

    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-direct {v1, v0}, Lwz;-><init>(Lwy;)V

    .line 258
    iget-object v0, p0, Lxb;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 259
    const v0, 0x7f070021

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lwz;->b:Landroid/widget/Button;

    .line 260
    const v0, 0x7f070022

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lwz;->a:Landroid/widget/Button;

    .line 262
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 267
    :goto_0
    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 273
    iget-object v2, v1, Lwz;->b:Landroid/widget/Button;

    iget-object v3, p0, Lxb;->a:Lwy;

    invoke-static {v3}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0417

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, v1, Lwz;->b:Landroid/widget/Button;

    new-instance v3, Lxd;

    invoke-direct {v3, p0, v0}, Lxd;-><init>(Lxb;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, v1, Lwz;->a:Landroid/widget/Button;

    new-instance v1, Lxf;

    invoke-direct {v1, p0, p1}, Lxf;-><init>(Lxb;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-object p4

    .line 264
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    move-object v1, v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 4
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 131
    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Lyv;

    move-result-object v1

    iget-object v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v1, v2, v3, v0}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 132
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b040a

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 167
    if-nez p3, :cond_2

    .line 168
    iget-object v0, p0, Lxb;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 169
    new-instance v1, Lxa;

    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-direct {v1, v0}, Lxa;-><init>(Lwy;)V

    .line 170
    const v0, 0x7f070013

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lxa;->a:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f070017

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lxa;->a:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f070018

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lxa;->b:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f070015

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lxa;->a:Landroid/widget/Button;

    .line 174
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 179
    :goto_0
    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 180
    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v3, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    iget-object v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lwo;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Lwo;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_3

    .line 183
    iget-object v3, v2, Lxa;->a:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lxb;->a:Lwy;

    invoke-static {v5}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_1
    iget-object v1, v2, Lxa;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, v2, Lxa;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, v2, Lxa;->a:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setId(I)V

    .line 192
    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Lyv;

    move-result-object v1

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v1, v3, v4, v0}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 193
    iget-object v1, v2, Lxa;->a:Landroid/widget/Button;

    new-instance v3, Lxc;

    invoke-direct {v3, p0, v0}, Lxc;-><init>(Lxb;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    packed-switch v0, :pswitch_data_0

    .line 247
    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    invoke-static {}, Lwy;->a()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 248
    iget-object v0, p0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 249
    :cond_1
    return-object p3

    .line 176
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxa;

    move-object v2, v0

    goto/16 :goto_0

    .line 185
    :cond_3
    iget-object v1, v2, Lxa;->a:Landroid/widget/ImageView;

    const v3, 0x7f020136

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 226
    :pswitch_0
    iget-object v0, v2, Lxa;->a:Landroid/widget/Button;

    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b040c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, v2, Lxa;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 230
    :pswitch_1
    iget-object v0, v2, Lxa;->a:Landroid/widget/Button;

    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, v2, Lxa;->a:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    invoke-static {}, Lwy;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 233
    invoke-static {v6}, Lwy;->a(I)I

    goto :goto_2

    .line 237
    :pswitch_2
    iget-object v0, v2, Lxa;->a:Landroid/widget/Button;

    iget-object v1, p0, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, v2, Lxa;->a:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    invoke-static {}, Lwy;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 240
    invoke-static {v6}, Lwy;->a(I)I

    goto :goto_2

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method
