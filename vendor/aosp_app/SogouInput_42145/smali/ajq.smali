.class public Lajq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalc;
.implements Lalv;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private a:I

.field private a:Ladc;

.field private a:Lajm;

.field private a:Lakz;

.field private a:Lanb;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/PopupWindow;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/ScrollView;

.field private a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:Ljava/util/Map;

.field private a:Lrr;

.field private a:Lsg;

.field private a:Z

.field private b:I

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/PopupWindow;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private b:Z

.field private c:I

.field private c:Landroid/widget/LinearLayout;

.field private final c:Ljava/lang/String;

.field private c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/high16 v0, 0x3f80

    iput v0, p0, Lajq;->a:F

    .line 101
    const/16 v0, 0x140

    iput v0, p0, Lajq;->a:I

    .line 102
    const/16 v0, 0x1e0

    iput v0, p0, Lajq;->b:I

    .line 104
    const-string v0, "#1a388ce8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lajq;->c:I

    .line 115
    iput-object v1, p0, Lajq;->a:Lakz;

    .line 120
    iput-object v1, p0, Lajq;->a:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lajq;->b:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lajq;->a:Ljava/util/Map;

    .line 131
    const-string v0, "1"

    iput-object v0, p0, Lajq;->c:Ljava/lang/String;

    .line 132
    const-string v0, "2"

    iput-object v0, p0, Lajq;->d:Ljava/lang/String;

    .line 133
    const-string v0, "3"

    iput-object v0, p0, Lajq;->e:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lajq;->a:Ljava/util/List;

    .line 142
    iput-boolean v2, p0, Lajq;->a:Z

    .line 144
    iput-boolean v2, p0, Lajq;->b:Z

    .line 146
    iput-object v1, p0, Lajq;->a:Landroid/content/Context;

    .line 147
    iput-object v1, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    .line 148
    iput-object v1, p0, Lajq;->b:Landroid/content/Context;

    .line 149
    iput-object v1, p0, Lajq;->a:Lajm;

    .line 150
    iput-object v1, p0, Lajq;->c:Landroid/widget/LinearLayout;

    .line 151
    new-instance v0, Lajr;

    invoke-direct {v0, p0}, Lajr;-><init>(Lajq;)V

    iput-object v0, p0, Lajq;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajq;->b:Ljava/util/List;

    .line 170
    iput-boolean v2, p0, Lajq;->c:Z

    .line 1945
    new-instance v0, Lakl;

    invoke-direct {v0, p0}, Lakl;-><init>(Lajq;)V

    iput-object v0, p0, Lajq;->a:Landroid/os/Handler;

    .line 173
    iput-object p1, p0, Lajq;->a:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lajq;->b:Landroid/content/Context;

    .line 175
    new-instance v0, Lakz;

    invoke-direct {v0}, Lakz;-><init>()V

    iput-object v0, p0, Lajq;->a:Lakz;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lajq;->a:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajq;->a:Ljava/util/List;

    .line 178
    iput-boolean v2, p0, Lajq;->b:Z

    .line 179
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lsc;->a(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences;

    .line 181
    iget-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences$Editor;

    .line 182
    return-void
.end method

.method private a(I)Lajj;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1329
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 1330
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1331
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajj;

    .line 1332
    iget-object v4, p0, Lajq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lajj;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laox;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lajj;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1333
    invoke-virtual {v0}, Lajj;->b()I

    move-result v4

    if-nez v4, :cond_0

    .line 1334
    invoke-virtual {v0, v2}, Lajj;->a(Z)V

    .line 1342
    :goto_1
    return-object v0

    .line 1336
    :cond_0
    invoke-virtual {v0}, Lajj;->b()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1337
    invoke-virtual {v0, v2}, Lajj;->a(Z)V

    goto :goto_1

    .line 1330
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1342
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lorg/w3c/dom/Element;)Lajj;
    .locals 3
    .parameter

    .prologue
    .line 1346
    const-string v0, "sogouime:apkad_position"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layu;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1347
    invoke-direct {p0, v0}, Lajq;->a(I)Lajj;

    move-result-object v0

    .line 1348
    if-nez v0, :cond_0

    .line 1349
    const/4 v0, 0x0

    .line 1363
    :goto_0
    return-object v0

    .line 1351
    :cond_0
    const-string v1, "sogouime:apkad_view_type_1_tag"

    invoke-virtual {v0}, Lajj;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v1, "sogouime:apkad_view_type_2_text"

    invoke-virtual {v0}, Lajj;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v1, "sogouime:apkad_view_type_3_text"

    invoke-virtual {v0}, Lajj;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v1, "sogouime:apkad_view_type_4_text"

    invoke-virtual {v0}, Lajj;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v1, "sogouime:action_download"

    invoke-virtual {v0}, Lajj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v1, "sogouime:dialog_show"

    invoke-virtual {v0}, Lajj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v1, "sogouime:dialog_title"

    invoke-virtual {v0}, Lajj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v1, "sogouime:dialog_content"

    invoke-virtual {v0}, Lajj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v1, "sogouime:file_name"

    invoke-virtual {v0}, Lajj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v1, "sogouime:file_type"

    invoke-virtual {v0}, Lajj;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lajq;)Lakz;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->a:Lakz;

    return-object v0
.end method

.method static synthetic a(Lajq;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 2234
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2237
    :goto_0
    return-object v0

    .line 2235
    :cond_0
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2236
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f02008b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2237
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lajq;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lajq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lajq;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lajq;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2241
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2254
    :goto_0
    return-object v0

    .line 2242
    :cond_0
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2244
    if-eqz p1, :cond_1

    .line 2245
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2253
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const v3, 0x7f02008b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v2, v0

    .line 2254
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2247
    :cond_1
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2248
    const v0, 0x7f020135

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 2250
    :cond_2
    const v0, 0x7f020136

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lajq;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lajq;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lajq;Landroid/os/Message;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lajq;->a(Landroid/os/Message;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lajq;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Message;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x65

    const v3, 0x7f0b030a

    .line 1837
    const-string v0, "getHotdictView(msg)"

    invoke-direct {p0, v0}, Lajq;->c(Ljava/lang/String;)V

    .line 1842
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->j(Z)V

    .line 1844
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1848
    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 1849
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v1, 0x7f0b0309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1912
    :goto_0
    return-object v0

    .line 1850
    :cond_0
    if-eq v0, v4, :cond_1

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_8

    .line 1852
    :cond_1
    if-ne v0, v4, :cond_6

    .line 1853
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 1854
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v1, 0x7f0b0307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1856
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 1857
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v1, 0x7f0b0306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1859
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1860
    iget-boolean v0, p0, Lajq;->a:Z

    if-eqz v0, :cond_4

    .line 1862
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v1, 0x7f0b0305

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1864
    :cond_4
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v1, 0x7f0b0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1867
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_6

    .line 1868
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1875
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1876
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laox;->Z:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laox;->aa:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1877
    :try_start_1
    invoke-virtual {p0, v1}, Lajq;->a(Ljava/io/InputStream;)Landroid/view/View;

    move-result-object v0

    .line 1878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing XML has consumed time (ms)= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lajq;->c(Ljava/lang/String;)V

    .line 1879
    if-nez v0, :cond_7

    .line 1880
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b030a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1907
    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1883
    :cond_7
    :try_start_2
    iget-object v2, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lafp;->i(Z)V

    .line 1884
    iget-object v2, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->az:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->az:I

    .line 1885
    new-instance v2, Lakk;

    invoke-direct {v2, p0}, Lakk;-><init>(Lajq;)V

    .line 1900
    iget-object v3, p0, Lajq;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1901
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1905
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b030a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 1907
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1910
    :cond_8
    invoke-direct {p0, v2}, Lajq;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1907
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1903
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajq;->c:Z

    .line 1792
    iput-object v2, p0, Lajq;->b:Landroid/view/View;

    .line 1793
    if-nez p1, :cond_0

    .line 1794
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1830
    :goto_0
    return-object v0

    .line 1796
    :cond_0
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1797
    const v1, 0x7f030034

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    .line 1798
    invoke-direct {p0}, Lajq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1799
    iget-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1800
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1802
    :cond_1
    iget-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1803
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b030a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1805
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b030b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1807
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->b()Ljava/lang/String;

    move-result-object v0

    .line 1808
    invoke-static {v0}, Layu;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1809
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1811
    :goto_1
    iget-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f07011c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&nbsp;<a href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    const v4, 0x7f0b030c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1817
    new-instance v2, Lakj;

    invoke-direct {v2, p0, v1}, Lakj;-><init>(Lajq;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1824
    iget-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f07011d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1825
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b030d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    :goto_2
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafp;->i(Z)V

    .line 1830
    iget-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 1827
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lajq;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic a(Lajq;)Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    return-object v0
.end method

.method static synthetic a(Lajq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lajq;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lajq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lajq;)Lrr;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->a:Lrr;

    return-object v0
.end method

.method static synthetic a(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lajq;->l()V

    return-void
.end method

.method static synthetic a(Lajq;Landroid/os/Message;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lajq;->a(Landroid/os/Message;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lajq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lajq;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lajq;->b(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lajq;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lajq;->c(Z)V

    return-void
.end method

.method private a(Landroid/os/Message;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayHotdictPage view ====== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lajq;->c(Ljava/lang/String;)V

    .line 1919
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->g(Ljava/lang/String;)V

    .line 1920
    if-eqz p2, :cond_1

    iget-object v0, p0, Lajq;->a:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajq;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1921
    iget-object v0, p0, Lajq;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 1922
    iget-object v0, p0, Lajq;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1923
    iget-object v0, p0, Lajq;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1924
    iget-object v0, p0, Lajq;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lajq;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajq;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1927
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 1928
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1929
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0302

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1935
    :cond_1
    :goto_0
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    if-eqz v0, :cond_2

    .line 1936
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a()V

    .line 1937
    :cond_2
    iget-boolean v0, p0, Lajq;->b:Z

    if-eqz v0, :cond_3

    .line 1938
    const-string v0, "displayHotdictPage........recycle useless view generated by thread"

    invoke-direct {p0, v0}, Lajq;->c(Ljava/lang/String;)V

    .line 1939
    invoke-static {p2}, Laox;->a(Landroid/view/View;)V

    .line 1942
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajq;->b:Z

    .line 1943
    return-void

    .line 1930
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 1931
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0303

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1183
    invoke-direct {p0}, Lajq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    invoke-direct {p0, p1}, Lajq;->b(Ljava/lang/String;)V

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1187
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1188
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1189
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1190
    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lajq;->b:Landroid/app/AlertDialog;

    .line 1191
    iget-object v2, p0, Lajq;->b:Landroid/app/AlertDialog;

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1192
    iget-object v2, p0, Lajq;->b:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1193
    iget-object v1, p0, Lajq;->b:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1194
    iget-object v1, p0, Lajq;->b:Landroid/app/AlertDialog;

    const v2, 0x7f0b04a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1195
    iget-object v1, p0, Lajq;->b:Landroid/app/AlertDialog;

    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    const v3, 0x7f0b0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v1, p0, Lajq;->b:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lakd;

    invoke-direct {v4, p0, p1}, Lakd;-><init>(Lajq;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1204
    iget-object v1, p0, Lajq;->b:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    const v4, 0x7f0b02ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lake;

    invoke-direct {v4, p0}, Lake;-><init>(Lajq;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1212
    iget-object v1, p0, Lajq;->b:Landroid/app/AlertDialog;

    new-instance v2, Lakf;

    invoke-direct {v2, p0, v0}, Lakf;-><init>(Lajq;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1221
    iget-object v0, p0, Lajq;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajq;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lajq;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1367
    const-string v0, "sogouime:apkad_view_type"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1370
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    const-string v0, "android:tag"

    const-string v1, "sogouime:apkad_view_type_1_tag"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_1
    :goto_1
    const-string v0, "sogouime:action_download"

    const-string v1, "sogouime:action_download"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v0, "sogouime:dialog_show"

    const-string v1, "sogouime:dialog_show"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v0, "sogouime:dialog_title"

    const-string v1, "sogouime:dialog_title"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v0, "sogouime:dialog_content"

    const-string v1, "sogouime:dialog_content"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v0, "sogouime:file_name"

    const-string v1, "sogouime:file_name"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v0, "sogouime:file_type"

    const-string v1, "sogouime:file_type"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1373
    const-string v0, "android:text"

    const-string v1, "sogouime:apkad_view_type_2_text"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1374
    :cond_3
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1376
    const-string v0, "android:text"

    const-string v1, "sogouime:apkad_view_type_3_text"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_4
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    const-string v0, "android:text"

    const-string v1, "sogouime:apkad_view_type_4_text"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1279
    const-string v3, ""

    .line 1280
    const-string v6, "apk"

    .line 1282
    const-string v0, "sogouime:dialog_title"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_0

    .line 1284
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1286
    :cond_0
    const-string v0, "sogouime:file_name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1287
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1288
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1295
    const-string v0, "sogouime:file_type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_1

    .line 1297
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 1299
    :cond_1
    new-instance v0, Ladc;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    sget-object v4, Laox;->T:Ljava/lang/String;

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Ladc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lajq;)V

    iput-object v0, p0, Lajq;->a:Ladc;

    .line 1300
    iget-object v0, p0, Lajq;->a:Ladc;

    invoke-virtual {v0}, Ladc;->a()V

    .line 1301
    :goto_0
    return-void

    .line 1291
    :cond_2
    invoke-direct {p0, p2}, Lajq;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lajq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lajq;->c:Z

    return p1
.end method

.method static synthetic b(Lajq;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lajq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lajq;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lajq;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lajq;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1269
    invoke-static {p1}, Layu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1271
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1272
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1273
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_0
    return-void

    .line 1274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v2, 0x7f0b02ab

    const v5, 0x7f0b015d

    const v4, 0x7f020099

    const/4 v3, -0x1

    .line 1228
    const-string v0, "sogouime:action_www"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    invoke-direct {p0, p3}, Lajq;->a(Ljava/lang/String;)V

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    const-string v0, "sogouime:action_download"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1236
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1237
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1238
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajq;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1239
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1241
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1242
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1246
    :cond_2
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1247
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1248
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajq;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1249
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1250
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1251
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1252
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1255
    :cond_3
    invoke-direct {p0, p1, p3}, Lajq;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1256
    :cond_4
    const-string v0, "sogouime:action_share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    :cond_5
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    const v3, 0x7f0b0312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    iget-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2062
    return-void
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1178
    iget-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1179
    iget-object v0, p0, Lajq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1180
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    .line 185
    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 186
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lajq;->a:Z

    .line 188
    :goto_0
    iget-object v2, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 191
    new-instance v2, Lanb;

    iget-object v3, p0, Lajq;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lanb;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lajq;->a:Lanb;

    .line 192
    iget-object v2, p0, Lajq;->a:Lanb;

    invoke-virtual {v2, p0}, Lanb;->b(Lalv;)V

    .line 193
    iget-object v4, p0, Lajq;->a:Lanb;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lajq;->a:Lsg;

    .line 194
    iget-object v0, p0, Lajq;->a:Lanb;

    iget-object v1, p0, Lajq;->a:Lsg;

    invoke-virtual {v0, v1}, Lanb;->c(Lsg;)V

    .line 195
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lajq;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 196
    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    .line 210
    :cond_0
    :goto_1
    return-void

    .line 187
    :cond_1
    iput-boolean v5, p0, Lajq;->a:Z

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lajq;->b:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lajq;->a:Lsg;

    .line 204
    iget-object v0, p0, Lajq;->a:Lsg;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lajq;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lanb;

    iput-object v0, p0, Lajq;->a:Lanb;

    .line 206
    iget-object v0, p0, Lajq;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 207
    iget-object v0, p0, Lajq;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_1
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 240
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 241
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 242
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 243
    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lajq;->a:Landroid/app/AlertDialog;

    .line 244
    iget-object v2, p0, Lajq;->a:Landroid/app/AlertDialog;

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 245
    iget-object v2, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 246
    iget-object v2, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 247
    iget-object v2, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lajq;->a:Landroid/app/AlertDialog;

    const v2, 0x7f0b01dc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 249
    iget-object v1, p0, Lajq;->a:Landroid/app/AlertDialog;

    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    const v3, 0x7f0b0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lajq;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lakc;

    invoke-direct {v4, p0, v0}, Lakc;-><init>(Lajq;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lajq;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lakp;

    invoke-direct {v3, p0}, Lakp;-><init>(Lajq;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1027
    iget-object v0, p0, Lajq;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lajq;->a:Landroid/view/View;

    .line 1029
    iget-object v0, p0, Lajq;->a:Landroid/view/View;

    iget v1, p0, Lajq;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lajq;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1032
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lajq;->a:Landroid/widget/LinearLayout;

    .line 1033
    iget-object v0, p0, Lajq;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajq;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1036
    :cond_1
    iget-object v0, p0, Lajq;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1037
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1038
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1039
    iget-object v1, p0, Lajq;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v0, p0, Lajq;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 437
    if-nez p1, :cond_0

    move-object v0, v2

    .line 458
    :goto_0
    return-object v0

    .line 438
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 439
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 440
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 443
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 444
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 446
    instance-of v6, v0, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_2

    .line 448
    const-string v6, "HotdictView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "LinearLayout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 449
    :cond_1
    check-cast v0, Lorg/w3c/dom/Element;

    .line 454
    :goto_2
    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {p0, v3}, Lajq;->a(Lorg/w3c/dom/Document;)V

    .line 456
    invoke-virtual {p0, v0}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 458
    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Lorg/w3c/dom/Element;)Landroid/view/View;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v8, -0x100

    .line 375
    iget-object v1, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lajq;->b:Landroid/view/View;

    .line 377
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 380
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HotdictView"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "LinearLayout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 381
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 382
    const-string v1, "android:layout_width"

    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lajq;->a:F

    invoke-static {v1, v5}, Lald;->b(Ljava/lang/String;F)I

    move-result v1

    .line 384
    const-string v5, "android:layout_height"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lajq;->a:F

    invoke-static {v5, v6}, Lald;->b(Ljava/lang/String;F)I

    move-result v5

    .line 386
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v0

    .line 389
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 390
    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 392
    const-string v7, "android:id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 393
    invoke-static {v6}, Lald;->e(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 389
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_2
    const-string v7, "android:background"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 397
    invoke-static {v6}, Lald;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v1, v2

    .line 399
    goto :goto_1

    .line 401
    :cond_3
    const-string v7, "android:orientation"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 402
    invoke-static {v6}, Lald;->d(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 405
    :cond_4
    const-string v7, "sogouime:touchview_color"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    iget v5, p0, Lajq;->c:I

    invoke-static {v6, v5}, Lald;->a(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lajq;->c:I

    goto :goto_1

    .line 410
    :cond_5
    if-nez v1, :cond_6

    .line 411
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 421
    :cond_6
    :goto_2
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)V

    .line 424
    return-object v3

    .line 414
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 416
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 418
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2
.end method

.method public a(Z)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 282
    iput-boolean v3, p0, Lajq;->b:Z

    .line 283
    iput-boolean v3, p0, Lajq;->c:Z

    .line 284
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 285
    :cond_0
    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lajq;->a()V

    .line 287
    invoke-virtual {p0}, Lajq;->j()V

    .line 289
    iget-object v0, p0, Lajq;->a:Lakz;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lajq;->a:Lakz;

    invoke-virtual {v0}, Lakz;->b()V

    .line 293
    :cond_1
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 295
    const v1, 0x7f030028

    invoke-virtual {v0, v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    .line 296
    new-instance v0, Lrr;

    iget-object v1, p0, Lajq;->b:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lajq;->a:Lrr;

    .line 298
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    iput-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    .line 300
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshListener(Lalc;)V

    .line 302
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lajq;->a:Landroid/widget/ScrollView;

    .line 303
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lajq;->b:Landroid/widget/LinearLayout;

    .line 304
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 306
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 307
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lajq;->a:F

    .line 309
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lajq;->a:I

    .line 310
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lajq;->b:I

    .line 312
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    .line 313
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 314
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 316
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    .line 317
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 318
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 319
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 321
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 322
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 323
    iget-object v0, p0, Lajq;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 325
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshEnabled(Z)V

    .line 326
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshing(Z)V

    .line 329
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laox;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 333
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 334
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 335
    new-instance v1, Lakq;

    invoke-direct {v1, p0, v0}, Lakq;-><init>(Lajq;Landroid/os/Message;)V

    .line 342
    iget-object v0, p0, Lajq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 358
    :cond_2
    :goto_0
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    return-object v0

    .line 346
    :cond_3
    invoke-direct {p0}, Lajq;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    invoke-direct {p0}, Lajq;->m()V

    goto :goto_0

    .line 349
    :cond_4
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 350
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 353
    :cond_5
    invoke-direct {p0}, Lajq;->l()V

    goto :goto_0
.end method

.method public a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6
    .parameter

    .prologue
    .line 1559
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1561
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1563
    const-string v1, "android:layout_width"

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1564
    const-string v1, "android:layout_height"

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1566
    const/4 v1, 0x0

    .line 1568
    instance-of v5, v0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;

    if-eqz v5, :cond_1

    .line 1569
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lajq;->a:F

    invoke-static {v3, v0}, Lald;->b(Ljava/lang/String;F)I

    move-result v0

    iget v2, p0, Lajq;->a:F

    invoke-static {v4, v2}, Lald;->b(Ljava/lang/String;F)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1582
    :cond_0
    :goto_0
    return-object v1

    .line 1571
    :cond_1
    instance-of v5, v0, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 1572
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lajq;->a:F

    invoke-static {v3, v0}, Lald;->b(Ljava/lang/String;F)I

    move-result v0

    iget v3, p0, Lajq;->a:F

    invoke-static {v4, v3}, Lald;->b(Ljava/lang/String;F)I

    move-result v3

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1574
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lajq;->a(Lorg/w3c/dom/NamedNodeMap;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_0

    .line 1575
    :cond_2
    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1576
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lajq;->a:F

    invoke-static {v3, v0}, Lald;->b(Ljava/lang/String;F)I

    move-result v0

    iget v3, p0, Lajq;->a:F

    invoke-static {v4, v3}, Lald;->b(Ljava/lang/String;F)I

    move-result v3

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1579
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lajq;->a(Lorg/w3c/dom/NamedNodeMap;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    .line 214
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lajq;->a:Lanb;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lajq;->a:Lanb;

    invoke-virtual {v0}, Lanb;->b()V

    .line 220
    :cond_0
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 224
    :cond_1
    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 227
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 2087
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2088
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2089
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2090
    new-instance v1, Lako;

    invoke-direct {v1, p0, v0}, Lako;-><init>(Lajq;Landroid/os/Message;)V

    .line 2097
    iget-object v0, p0, Lajq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2098
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2099
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 975
    new-instance v0, Lajx;

    invoke-direct {v0, p0, p1}, Lajx;-><init>(Lajq;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1024
    return-void
.end method

.method public a(Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Lorg/w3c/dom/NamedNodeMap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, 0x42c8

    .line 1304
    const-string v0, "android:layout_width"

    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_5

    .line 1307
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1308
    iget v2, p0, Lajq;->a:F

    invoke-static {v0, v2}, Lald;->b(Ljava/lang/String;F)I

    move-result v0

    .line 1310
    :goto_0
    const-string v2, "android:layout_height"

    invoke-interface {p2, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1311
    if-eqz v2, :cond_0

    .line 1312
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1313
    iget v2, p0, Lajq;->a:F

    invoke-static {v1, v2}, Lald;->b(Ljava/lang/String;F)I

    move-result v1

    .line 1317
    :cond_0
    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_4

    .line 1318
    :cond_1
    iget v0, p0, Lajq;->a:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v2, v0

    .line 1321
    :goto_1
    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_3

    .line 1322
    :cond_2
    iget v0, p0, Lajq;->a:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1325
    :goto_2
    invoke-virtual {p1, v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setRequireSize(II)V

    .line 1326
    return-void

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;)V
    .locals 4
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    :goto_0
    return-void

    .line 1776
    :cond_0
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshing(Z)V

    .line 1778
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1779
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1780
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1781
    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1782
    iget-object v1, p0, Lajq;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1786
    :cond_1
    invoke-direct {p0}, Lajq;->l()V

    goto :goto_0
.end method

.method public a(Lorg/w3c/dom/Document;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 466
    const-string v0, "ads"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 468
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 473
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move v2, v3

    .line 474
    :goto_0
    if-ge v2, v5, :cond_c

    .line 475
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 476
    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 477
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 478
    if-eqz v6, :cond_0

    .line 479
    new-instance v7, Lajj;

    invoke-direct {v7}, Lajj;-><init>()V

    .line 481
    const-string v0, "sogouime:apkad_position"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 482
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-static {v0, v3}, Layu;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lajj;->b(I)V

    .line 484
    const-string v0, "sogouime:apkad_packagename"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lajj;->k(Ljava/lang/String;)V

    .line 488
    const-string v0, "sogouime:apkad_view_type_1_tag"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 489
    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {v7, v0}, Lajj;->g(Ljava/lang/String;)V

    .line 491
    const-string v0, "sogouime:apkad_view_type_2_text"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 492
    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {v7, v0}, Lajj;->h(Ljava/lang/String;)V

    .line 494
    const-string v0, "sogouime:apkad_view_type_3_text"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 495
    if-nez v0, :cond_5

    move-object v0, v1

    :goto_5
    invoke-virtual {v7, v0}, Lajj;->i(Ljava/lang/String;)V

    .line 497
    const-string v0, "sogouime:apkad_view_type_4_text"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 498
    if-nez v0, :cond_6

    move-object v0, v1

    :goto_6
    invoke-virtual {v7, v0}, Lajj;->j(Ljava/lang/String;)V

    .line 500
    const-string v0, "sogouime:action_download"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lajj;->a(Ljava/lang/String;)V

    .line 504
    const-string v0, "sogouime:dialog_show"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 505
    if-nez v0, :cond_7

    const-string v0, "1"

    :goto_7
    invoke-virtual {v7, v0}, Lajj;->d(Ljava/lang/String;)V

    .line 507
    const-string v0, "sogouime:dialog_title"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 508
    if-nez v0, :cond_8

    move-object v0, v1

    :goto_8
    invoke-virtual {v7, v0}, Lajj;->b(Ljava/lang/String;)V

    .line 510
    const-string v0, "sogouime:dialog_content"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 511
    if-nez v0, :cond_9

    move-object v0, v1

    :goto_9
    invoke-virtual {v7, v0}, Lajj;->c(Ljava/lang/String;)V

    .line 513
    const-string v0, "sogouime:file_name"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 514
    if-nez v0, :cond_a

    move-object v0, v1

    :goto_a
    invoke-virtual {v7, v0}, Lajj;->e(Ljava/lang/String;)V

    .line 516
    const-string v0, "sogouime:file_type"

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 517
    if-nez v0, :cond_b

    const-string v0, "apk"

    :goto_b
    invoke-virtual {v7, v0}, Lajj;->f(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Lajj;->a(I)V

    .line 520
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 482
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 489
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 492
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 495
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 498
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 505
    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 508
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 511
    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 514
    :cond_a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 517
    :cond_b
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 523
    :cond_c
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 524
    :cond_d
    return-void
.end method

.method public a(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter

    .prologue
    .line 527
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 528
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-boolean v0, p0, Lajq;->b:Z

    if-nez v0, :cond_a

    .line 529
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 530
    instance-of v0, v1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    .line 531
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 532
    const-string v4, "RelativeLayout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 533
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->h(Lorg/w3c/dom/Element;)V

    .line 551
    :cond_0
    :goto_1
    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1}, Lajq;->a(Lorg/w3c/dom/Element;)V

    .line 528
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 534
    :cond_2
    const-string v4, "ImageView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 535
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->j(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 536
    :cond_3
    const-string v4, "TextView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v1

    .line 537
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->g(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 538
    :cond_4
    const-string v4, "View"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v1

    .line 539
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->f(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 540
    :cond_5
    const-string v4, "ImageButton"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v0, v1

    .line 541
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->c(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 542
    :cond_6
    const-string v4, "AutoLineBreakView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v1

    .line 543
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->i(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 544
    :cond_7
    const-string v4, "LinearLayout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v1

    .line 545
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->b(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 546
    :cond_8
    const-string v4, "Button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v0, v1

    .line 547
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->e(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 548
    :cond_9
    const-string v4, "ImageTextButton"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 549
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lajq;->d(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 554
    :cond_a
    return-void
.end method

.method public a(Lorg/w3c/dom/NamedNodeMap;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1586
    .line 1588
    const-string v0, "android:layout_margin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1589
    if-eqz v0, :cond_0

    .line 1590
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    .line 1591
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1594
    :cond_0
    const-string v0, "android:layout_marginBottom"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_1

    .line 1596
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1598
    :cond_1
    const-string v0, "android:layout_marginLeft"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_2

    .line 1600
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1602
    :cond_2
    const-string v0, "android:layout_marginRight"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1603
    if-eqz v0, :cond_3

    .line 1604
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1606
    :cond_3
    const-string v0, "android:layout_marginTop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1607
    if-eqz v0, :cond_4

    .line 1608
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1610
    :cond_4
    const-string v0, "android:layout_weight"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1611
    if-eqz v0, :cond_5

    .line 1612
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->b(Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1614
    :cond_5
    return-void
.end method

.method public a(Lorg/w3c/dom/NamedNodeMap;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xd

    .line 1618
    .line 1620
    const-string v0, "android:layout_margin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1621
    if-eqz v0, :cond_0

    .line 1622
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    .line 1623
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1626
    :cond_0
    const-string v0, "android:layout_marginBottom"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1627
    if-eqz v0, :cond_1

    .line 1628
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1631
    :cond_1
    const-string v0, "android:layout_marginLeft"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1632
    if-eqz v0, :cond_2

    .line 1633
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1635
    :cond_2
    const-string v0, "android:layout_marginRight"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1636
    if-eqz v0, :cond_3

    .line 1637
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1639
    :cond_3
    const-string v0, "android:layout_marginTop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1640
    if-eqz v0, :cond_4

    .line 1641
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lajq;->a:F

    invoke-static {v0, v1}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1646
    :cond_4
    const-string v0, "android:layout_above"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1647
    if-eqz v0, :cond_5

    .line 1648
    const/4 v1, 0x2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1651
    :cond_5
    const-string v0, "android:layout_alignBaseline"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1652
    if-eqz v0, :cond_6

    .line 1653
    const/4 v1, 0x4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1657
    :cond_6
    const-string v0, "android:layout_alignBottom"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1658
    if-eqz v0, :cond_7

    .line 1659
    const/16 v1, 0x8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1663
    :cond_7
    const-string v0, "android:layout_alignLeft"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1664
    if-eqz v0, :cond_8

    .line 1665
    const/4 v1, 0x5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1669
    :cond_8
    const-string v0, "android:layout_alignParentBottom"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1670
    if-eqz v0, :cond_9

    .line 1671
    const/16 v1, 0xc

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1675
    :cond_9
    const-string v0, "android:layout_alignParentLeft"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1676
    if-eqz v0, :cond_a

    .line 1677
    const/16 v1, 0x9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1681
    :cond_a
    const-string v0, "android:layout_alignParentRight"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1682
    if-eqz v0, :cond_b

    .line 1683
    const/16 v1, 0xb

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1687
    :cond_b
    const-string v0, "android:layout_alignParentTop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1688
    if-eqz v0, :cond_c

    .line 1689
    const/16 v1, 0xa

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1693
    :cond_c
    const-string v0, "android:layout_alignRight"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1694
    if-eqz v0, :cond_d

    .line 1695
    const/4 v1, 0x7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1699
    :cond_d
    const-string v0, "android:layout_alignTop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1700
    if-eqz v0, :cond_e

    .line 1701
    const/4 v1, 0x6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1705
    :cond_e
    const-string v0, "android:layout_below"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1706
    if-eqz v0, :cond_f

    .line 1707
    const/4 v1, 0x3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1710
    :cond_f
    const-string v0, "android:layout_centerHorizontal"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1711
    if-eqz v0, :cond_10

    .line 1712
    const/16 v1, 0xe

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1716
    :cond_10
    const-string v0, "android:layout_centerInParent"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_11

    .line 1718
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1722
    :cond_11
    const-string v0, "android:layout_centerVertical"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1723
    if-eqz v0, :cond_12

    .line 1724
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1728
    :cond_12
    const-string v0, "android:layout_toLeftOf"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1729
    if-eqz v0, :cond_13

    .line 1730
    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1734
    :cond_13
    const-string v0, "android:layout_toRightOf"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1735
    if-eqz v0, :cond_14

    .line 1736
    const/4 v1, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1740
    :cond_14
    return-void
.end method

.method public a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1132
    const-string v0, "sogouime:apkad_view_type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lajq;->c:Z

    .line 1135
    :goto_0
    const-string v0, "sogouime:dialog_show"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_3

    .line 1137
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    const-string v0, ""

    .line 1139
    const-string v1, ""

    .line 1140
    const-string v2, "sogouime:dialog_title"

    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1144
    :cond_0
    const-string v2, "sogouime:dialog_content"

    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1145
    if-eqz v2, :cond_1

    .line 1146
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1148
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laka;

    invoke-direct {v2, p0, p1, p2, p3}, Laka;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajq;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1159
    new-instance v1, Lakb;

    invoke-direct {v1, p0}, Lakb;-><init>(Lajq;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1164
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1171
    :goto_1
    return-void

    .line 1133
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajq;->c:Z

    goto :goto_0

    .line 1169
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lajq;->b(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2262
    iput-boolean p1, p0, Lajq;->c:Z

    .line 2263
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2258
    iget-boolean v0, p0, Lajq;->c:Z

    return v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2136
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2137
    iget-object v0, p0, Lajq;->a:Lajm;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lajq;->a:Lajm;

    invoke-virtual {v0}, Lajm;->b()V

    .line 2140
    :cond_0
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2142
    const/4 v0, 0x1

    .line 2145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lajq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    invoke-direct {p0}, Lajq;->m()V

    .line 365
    :cond_1
    return-void
.end method

.method public b(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 557
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 558
    iget-object v1, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 561
    const-string v1, "android:layout_width"

    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lajq;->a:F

    invoke-static {v1, v4}, Lald;->b(Ljava/lang/String;F)I

    move-result v1

    .line 563
    const-string v4, "android:layout_height"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lajq;->a:F

    invoke-static {v4, v5}, Lald;->b(Ljava/lang/String;F)I

    move-result v4

    .line 565
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 566
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v0

    .line 568
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 569
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 571
    const-string v6, "android:id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 572
    invoke-static {v5}, Lald;->e(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 568
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_1
    const-string v6, "android:background"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 576
    invoke-static {v5}, Lald;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 579
    :cond_2
    const-string v6, "android:orientation"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 580
    invoke-static {v5}, Lald;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 583
    :cond_3
    const-string v6, "sogouime:always_at_bottom"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lald;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 584
    const/4 v1, 0x1

    .line 585
    goto :goto_1

    .line 587
    :cond_4
    const-string v6, "sogouime:bottom_vertical_line"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Lald;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    const v4, 0x7f020140

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 593
    :cond_5
    if-eqz v1, :cond_7

    .line 594
    const v0, 0x7f02013d

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 595
    iput-object v2, p0, Lajq;->b:Landroid/view/View;

    .line 602
    :cond_6
    :goto_2
    return-void

    .line 598
    :cond_7
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 599
    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 600
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public c()V
    .locals 10

    .prologue
    .line 1766
    new-instance v0, Lajm;

    iget-object v1, p0, Lajq;->a:Landroid/content/Context;

    iget-object v2, p0, Lajq;->a:Landroid/widget/ScrollView;

    iget-object v3, p0, Lajq;->a:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lajq;->a:Ljava/lang/String;

    iget-object v5, p0, Lajq;->b:Ljava/lang/String;

    iget v6, p0, Lajq;->a:I

    iget v7, p0, Lajq;->b:I

    iget v8, p0, Lajq;->a:F

    iget-object v9, p0, Lajq;->a:Lakz;

    invoke-direct/range {v0 .. v9}, Lajm;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/PopupWindow;Ljava/lang/String;Ljava/lang/String;IIFLakz;)V

    iput-object v0, p0, Lajq;->a:Lajm;

    .line 1768
    return-void
.end method

.method public c(Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 605
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 606
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 610
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 611
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 612
    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 614
    const-string v3, "android:id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    invoke-static {v6}, Lald;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 611
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    const-string v3, "sogouime:action_share"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    const-string v1, "sogouime:default_img"

    invoke-interface {v5, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 622
    if-eqz v1, :cond_5

    .line 623
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_2
    const-string v3, "sogouime:pressed_img"

    invoke-interface {v5, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 626
    if-eqz v3, :cond_4

    .line 627
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 631
    :goto_3
    new-instance v7, Lakr;

    invoke-direct {v7, p0, v1, v3, v4}, Lakr;-><init>(Lajq;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V

    .line 656
    iget-object v1, p0, Lajq;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 659
    new-instance v1, Laks;

    invoke-direct {v1, p0, v5, v6}, Laks;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 667
    :cond_2
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 668
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 669
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    :cond_3
    return-void

    :cond_4
    move-object v3, v2

    goto :goto_3

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method

.method public d()V
    .locals 0

    .prologue
    .line 2067
    return-void
.end method

.method public d(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f020042

    .line 674
    new-instance v1, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;-><init>(Landroid/content/Context;)V

    .line 675
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 678
    const-string v0, "sogouime:button_image_color"

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_7

    .line 680
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 681
    const-string v3, "blue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    const v0, 0x7f020030

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    .line 700
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 701
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 702
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 703
    const-string v5, "android:id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 704
    invoke-static {v4}, Lald;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setId(I)V

    .line 700
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 683
    :cond_1
    const-string v3, "green"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 684
    const v0, 0x7f02003c

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 685
    :cond_2
    const-string v3, "orange"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 686
    const v0, 0x7f02003f

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 687
    :cond_3
    const-string v3, "red"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 688
    const v0, 0x7f020045

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 689
    :cond_4
    const-string v3, "paleyellow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 690
    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 691
    :cond_5
    const-string v3, "bottom"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 692
    const v0, 0x7f02013e

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 694
    :cond_6
    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 697
    :cond_7
    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 707
    :cond_8
    const-string v5, "android:text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 708
    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 711
    :cond_9
    const-string v5, "android:textSize"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 712
    invoke-static {v4}, Lald;->a(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setTextSize(I)V

    goto :goto_2

    .line 715
    :cond_a
    const-string v5, "android:textColor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 716
    invoke-static {v4}, Lald;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    goto :goto_2

    .line 719
    :cond_b
    const-string v5, "sogouime:action_share"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 720
    new-instance v3, Lakt;

    invoke-direct {v3, p0, v2, v4}, Lakt;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 727
    :cond_c
    const-string v5, "sogouime:action_www"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 728
    new-instance v3, Laku;

    invoke-direct {v3, p0, v2, v4}, Laku;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 735
    :cond_d
    const-string v5, "sogouime:action_download"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    new-instance v3, Lakv;

    invoke-direct {v3, p0, v2, v4}, Lakv;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 744
    :cond_e
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 745
    if-eqz v0, :cond_f

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 746
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    :cond_f
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 2072
    return-void
.end method

.method public e(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f020042

    .line 751
    new-instance v1, Landroid/widget/Button;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 752
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 756
    const-string v0, "sogouime:apkad_view_type"

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    const-string v3, "4"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v3, "4"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v3, p1, v0}, Lajq;->a(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    .line 762
    :cond_0
    const-string v0, "sogouime:button_image_color"

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_8

    .line 764
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 765
    const-string v3, "blue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 766
    const v0, 0x7f020030

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 784
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 785
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 787
    const-string v5, "android:id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 788
    invoke-static {v4}, Lald;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setId(I)V

    .line 784
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 767
    :cond_2
    const-string v3, "green"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    const v0, 0x7f02003c

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 769
    :cond_3
    const-string v3, "orange"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 770
    const v0, 0x7f02003f

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 771
    :cond_4
    const-string v3, "red"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 772
    const v0, 0x7f020045

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 773
    :cond_5
    const-string v3, "paleyellow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 774
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 775
    :cond_6
    const-string v3, "bottom"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 776
    const v0, 0x7f02013e

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 778
    :cond_7
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 781
    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 791
    :cond_9
    const-string v5, "android:text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 792
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 795
    :cond_a
    const-string v5, "android:textSize"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 796
    invoke-static {v4}, Lald;->a(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_2

    .line 799
    :cond_b
    const-string v5, "android:textColor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 800
    invoke-static {v4}, Lald;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 803
    :cond_c
    const-string v5, "sogouime:action_share"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 804
    new-instance v3, Lajs;

    invoke-direct {v3, p0, v2, v4}, Lajs;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 811
    :cond_d
    const-string v5, "sogouime:action_www"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 812
    new-instance v3, Lajt;

    invoke-direct {v3, p0, v2, v4}, Lajt;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 819
    :cond_e
    const-string v5, "sogouime:action_download"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    new-instance v3, Laju;

    invoke-direct {v3, p0, v2, v4}, Laju;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 828
    :cond_f
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 829
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 830
    if-eqz v0, :cond_10

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    .line 831
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    :cond_10
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 2077
    return-void
.end method

.method public f(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter

    .prologue
    .line 841
    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 842
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 845
    if-eqz v1, :cond_0

    instance-of v0, v1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lajq;->a:Ljava/util/Map;

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 852
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 853
    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 854
    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 855
    const-string v5, "android:background"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 856
    invoke-static {v4}, Lald;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 852
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_2
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 861
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 862
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    :cond_3
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a()V

    .line 2084
    :cond_0
    return-void
.end method

.method public g(Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 867
    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 868
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 872
    const-string v0, "sogouime:apkad_view_type"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    .line 875
    const-string v4, "2"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 876
    const-string v4, "2"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4, p1, v0}, Lajq;->a(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    .line 882
    :cond_0
    :goto_0
    const-string v0, "android:text"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 883
    if-eqz v4, :cond_3

    .line 884
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v0, v1

    .line 889
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 890
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 891
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 892
    const-string v7, "android:id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 893
    invoke-static {v6}, Lald;->e(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    .line 889
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 877
    :cond_2
    const-string v4, "3"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const-string v4, "3"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4, p1, v0}, Lajq;->a(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 886
    :cond_3
    const-string v0, "Warning: Please add the attr \'text\'"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 896
    :cond_4
    const-string v7, "android:textSize"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 897
    invoke-static {v6}, Lald;->a(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 900
    :cond_5
    const-string v7, "android:textColor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 901
    invoke-static {v6}, Lald;->c(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 904
    :cond_6
    const-string v7, "android:textStyle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 905
    const/4 v5, 0x0

    invoke-static {v6}, Lald;->b(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 906
    if-eqz v6, :cond_1

    const-string v5, "bold"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 908
    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_3

    .line 912
    :cond_7
    const-string v7, "sogouime:action_www"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<a href=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Layu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "</a>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    new-instance v5, Lajv;

    invoke-direct {v5, p0, v3, v6}, Lajv;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 923
    :cond_8
    const-string v7, "sogouime:action_download"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<a href=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Layu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "</a>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    new-instance v5, Lajw;

    invoke-direct {v5, p0, v3, v6}, Lajw;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 933
    :cond_9
    const-string v7, "android:textColorLink"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 934
    invoke-static {v6}, Lald;->c(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto/16 :goto_3

    .line 937
    :cond_a
    const-string v7, "android:haveunderline"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 938
    invoke-static {v6}, Lald;->a(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b

    .line 939
    if-eqz v4, :cond_c

    .line 940
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    :cond_b
    :goto_4
    const-string v7, "sogouime:bg_color"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 947
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 948
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 949
    invoke-static {v6}, Lald;->c(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 950
    const-string v6, "sogouime:bg_corner_radius"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 951
    if-eqz v6, :cond_d

    .line 952
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lald;->b(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 956
    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 942
    :cond_c
    const-string v7, "Warning: Please add the attr \'text\'"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 954
    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_5

    .line 960
    :cond_e
    const-string v7, "sogouime:padding"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 961
    iget v5, p0, Lajq;->a:F

    invoke-static {v6, v5}, Lald;->a(Ljava/lang/String;F)[I

    move-result-object v5

    .line 962
    const/4 v6, 0x2

    aget v6, v5, v6

    aget v7, v5, v1

    const/4 v8, 0x3

    aget v8, v5, v8

    aget v5, v5, v9

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 967
    :cond_f
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 968
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 969
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    :cond_10
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 2104
    return-void
.end method

.method public h(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 1045
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1046
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const-string v0, "sogouime:apkad_view_type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_0

    .line 1050
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    invoke-direct {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Lajj;

    move-result-object v0

    .line 1053
    if-nez v0, :cond_0

    .line 1054
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1063
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1064
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1065
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1067
    const-string v5, "android:id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1068
    invoke-static {v4}, Lald;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1064
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    :cond_2
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajq;->b:Landroid/content/Context;

    const-string v2, "sogouime:apkad_packagename"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laox;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1071
    :cond_3
    const-string v5, "android:background"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1072
    invoke-static {v4}, Lald;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 1075
    :cond_4
    const-string v5, "sogouime:action_www"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1076
    new-instance v3, Lajy;

    invoke-direct {v3, p0, v2, v4}, Lajy;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    invoke-virtual {p0, v1}, Lajq;->a(Landroid/view/View;)V

    goto :goto_2

    .line 1084
    :cond_5
    const-string v5, "sogouime:action_download"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1085
    new-instance v3, Lajz;

    invoke-direct {v3, p0, v2, v4}, Lajz;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    invoke-virtual {p0, v1}, Lajq;->a(Landroid/view/View;)V

    goto :goto_2

    .line 1095
    :cond_6
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1096
    if-eqz v0, :cond_7

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 1097
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    :cond_7
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Lajq;->a:Ladc;

    if-eqz v0, :cond_0

    .line 2125
    iget-object v0, p0, Lajq;->a:Ladc;

    invoke-virtual {v0}, Ladc;->b()V

    .line 2127
    :cond_0
    iget-object v0, p0, Lajq;->a:Lajm;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lajq;->a:Lajm;

    invoke-virtual {v0}, Lajm;->b()V

    .line 2130
    :cond_1
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2131
    iget-object v0, p0, Lajq;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2133
    :cond_2
    return-void
.end method

.method public i(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4170

    .line 1102
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1104
    iget v0, p0, Lajq;->a:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1105
    iget v1, p0, Lajq;->a:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 1107
    const-string v3, "sogouime:child_layout_marginTop"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1108
    if-eqz v3, :cond_0

    .line 1109
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lajq;->a:F

    invoke-static {v0, v3}, Lald;->a(Ljava/lang/String;F)I

    move-result v0

    .line 1111
    :cond_0
    const-string v3, "sogouime:child_layout_marginLeft"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1112
    if-eqz v2, :cond_1

    .line 1113
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lajq;->a:F

    invoke-static {v1, v2}, Lald;->a(Ljava/lang/String;F)I

    move-result v1

    .line 1116
    :cond_1
    new-instance v2, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;

    iget-object v3, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;-><init>(Landroid/content/Context;II)V

    .line 1117
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1119
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1120
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    :cond_2
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 2149
    iget-object v0, p0, Lajq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 2150
    if-eqz v0, :cond_0

    .line 2152
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2156
    :cond_1
    iget-object v0, p0, Lajq;->a:Lakz;

    if-eqz v0, :cond_2

    .line 2157
    iget-object v0, p0, Lajq;->a:Lakz;

    invoke-virtual {v0}, Lakz;->a()V

    .line 2159
    :cond_2
    return-void
.end method

.method public j(Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 1391
    new-instance v2, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;-><init>(Landroid/content/Context;)V

    .line 1392
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1395
    const-string v0, "sogouime:apkad_view_type"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_0

    const-string v4, "1"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    const-string v4, "1"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v4, p1, v0}, Lajq;->a(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    .line 1401
    :cond_0
    const-string v0, "android:tag"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_3

    .line 1403
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setTag(Ljava/lang/Object;)V

    .line 1409
    :goto_0
    const-string v0, "sogouime:img_size"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1410
    if-eqz v0, :cond_5

    .line 1411
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1412
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1413
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImgSize(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, v2, v3}, Lajq;->a(Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Lorg/w3c/dom/NamedNodeMap;)V

    .line 1424
    :cond_1
    :goto_1
    const-string v0, "sogouime:imgad"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1426
    invoke-virtual {v2, v9}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImgAD(Z)V

    .line 1427
    const-string v0, "2"

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImgSize(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1429
    const-string v4, "sogouime:imgad_landscape_show"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1431
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lald;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1432
    if-ne v0, v8, :cond_6

    .line 1433
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setVisibility(I)V

    .line 1555
    :cond_2
    :goto_2
    return-void

    .line 1405
    :cond_3
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1415
    :cond_4
    const-string v4, "2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    const-string v0, "2"

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImgSize(Ljava/lang/String;)V

    goto :goto_1

    .line 1419
    :cond_5
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImgSize(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p0, v2, v3}, Lajq;->a(Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Lorg/w3c/dom/NamedNodeMap;)V

    goto :goto_1

    .line 1437
    :cond_6
    if-ne v0, v8, :cond_8

    .line 1439
    const-string v0, "sogouime:imgad_landscape_img"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_7

    .line 1441
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setTag(Ljava/lang/Object;)V

    .line 1444
    :cond_7
    const-string v0, "sogouime:imgad_landscape_layout_height"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1445
    if-eqz v0, :cond_8

    .line 1446
    const-string v4, "android:layout_height"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1447
    const-string v4, "android:layout_height"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 1454
    :cond_8
    const-string v0, "sogouime:round_cornered"

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1455
    if-eqz v0, :cond_9

    .line 1456
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1457
    invoke-static {v0}, Lald;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setRoundCornered(Z)V

    .line 1460
    :cond_9
    iget-object v0, p0, Lajq;->a:Lakz;

    new-instance v4, Lakw;

    invoke-direct {v4, p0}, Lakw;-><init>(Lajq;)V

    invoke-virtual {v0, v2, v4}, Lakz;->a(Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Lalb;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1463
    if-eqz v0, :cond_c

    .line 1464
    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1465
    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lajq;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    :goto_3
    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1483
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_4
    move v0, v1

    .line 1488
    :goto_5
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_16

    .line 1489
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 1490
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1492
    const-string v6, "android:id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1493
    invoke-static {v5}, Lald;->e(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setId(I)V

    .line 1488
    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1467
    :cond_b
    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1470
    :cond_c
    const v0, 0x7f020098

    .line 1471
    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Ljava/lang/String;

    move-result-object v4

    .line 1472
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1473
    const v0, 0x7f020097

    .line 1475
    :cond_d
    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1476
    invoke-direct {p0, v0}, Lajq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1478
    :cond_e
    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageResource(I)V

    goto :goto_3

    .line 1485
    :cond_f
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_4

    .line 1497
    :cond_10
    const-string v6, "sogouime:action_www"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1498
    new-instance v4, Lakg;

    invoke-direct {v4, p0, v3, v5}, Lakg;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 1506
    :cond_11
    const-string v6, "sogouime:action_download"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1507
    new-instance v4, Lakh;

    invoke-direct {v4, p0, v3, v5}, Lakh;-><init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 1515
    :cond_12
    const-string v6, "sogouime:action_bigimg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1516
    new-instance v4, Laki;

    invoke-direct {v4, p0, v5}, Laki;-><init>(Lajq;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 1528
    :cond_13
    const-string v6, "sogouime:padding"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1529
    iget v4, p0, Lajq;->a:F

    invoke-static {v5, v4}, Lald;->a(Ljava/lang/String;F)[I

    move-result-object v4

    .line 1530
    aget v5, v4, v8

    aget v6, v4, v1

    const/4 v7, 0x3

    aget v7, v4, v7

    aget v4, v4, v9

    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setPadding(IIII)V

    goto :goto_6

    .line 1534
    :cond_14
    const-string v6, "sogouime:shape_stroke_width"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1536
    invoke-virtual {v2, p0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1537
    invoke-virtual {v2, v5}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setShapeStrokeWidth(Ljava/lang/String;)V

    .line 1538
    const-string v4, "sogouime:shape_stroke_color"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1539
    if-eqz v4, :cond_15

    .line 1540
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setShapeStrokeColor(Ljava/lang/String;)V

    .line 1542
    :cond_15
    const-string v4, "sogouime:shape_corner_radius"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1543
    if-eqz v4, :cond_a

    .line 1544
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setShapeCornerRadius(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1551
    :cond_16
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1552
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1553
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lajq;->a(Lorg/w3c/dom/Element;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2162
    const-string v0, "recycle"

    invoke-direct {p0, v0}, Lajq;->c(Ljava/lang/String;)V

    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajq;->b:Z

    .line 2164
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lajq;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2166
    :cond_0
    iget-object v0, p0, Lajq;->a:Lajm;

    if-eqz v0, :cond_1

    .line 2167
    iget-object v0, p0, Lajq;->a:Lajm;

    invoke-virtual {v0}, Lajm;->c()V

    .line 2168
    iput-object v1, p0, Lajq;->a:Lajm;

    .line 2171
    :cond_1
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2172
    iget-object v0, p0, Lajq;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2175
    :cond_2
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2176
    iget-object v0, p0, Lajq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2179
    :cond_3
    iget-object v0, p0, Lajq;->a:Lsg;

    if-eqz v0, :cond_4

    .line 2180
    iget-object v0, p0, Lajq;->a:Lsg;

    invoke-virtual {v0, v1}, Lsg;->a(Lalv;)V

    .line 2181
    iput-object v1, p0, Lajq;->a:Lsg;

    .line 2184
    :cond_4
    iget-object v0, p0, Lajq;->a:Lrr;

    if-eqz v0, :cond_5

    .line 2185
    iget-object v0, p0, Lajq;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 2186
    iput-object v1, p0, Lajq;->a:Lrr;

    .line 2188
    :cond_5
    iget-object v0, p0, Lajq;->a:Lanb;

    if-eqz v0, :cond_6

    .line 2189
    iget-object v0, p0, Lajq;->a:Lanb;

    invoke-virtual {v0}, Lanb;->a()V

    .line 2190
    iput-object v1, p0, Lajq;->a:Lanb;

    .line 2193
    :cond_6
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->a()Lsb;

    move-result-object v0

    instance-of v0, v0, Lanb;

    if-eqz v0, :cond_7

    .line 2194
    iget-object v0, p0, Lajq;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsa;->a(Lsb;)V

    .line 2197
    :cond_7
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    if-eqz v0, :cond_8

    .line 2198
    iget-object v0, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshListener(Lalc;)V

    .line 2199
    iput-object v1, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    .line 2202
    :cond_8
    iget-object v0, p0, Lajq;->a:Lakz;

    if-eqz v0, :cond_9

    .line 2203
    iget-object v0, p0, Lajq;->a:Lakz;

    invoke-virtual {v0}, Lakz;->b()V

    .line 2204
    iput-object v1, p0, Lajq;->a:Lakz;

    .line 2207
    :cond_9
    iget-object v0, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 2208
    iget-object v0, p0, Lajq;->c:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 2209
    iput-object v1, p0, Lajq;->a:Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    .line 2210
    iput-object v1, p0, Lajq;->a:Landroid/widget/PopupWindow;

    .line 2211
    iput-object v1, p0, Lajq;->a:Landroid/widget/ScrollView;

    .line 2212
    iput-object v1, p0, Lajq;->b:Landroid/widget/LinearLayout;

    .line 2213
    iput-object v1, p0, Lajq;->b:Landroid/view/View;

    .line 2215
    iput-object v1, p0, Lajq;->b:Landroid/widget/PopupWindow;

    .line 2216
    iput-object v1, p0, Lajq;->a:Landroid/view/View;

    .line 2217
    iput-object v1, p0, Lajq;->a:Landroid/widget/LinearLayout;

    .line 2219
    iput-object v1, p0, Lajq;->a:Ladc;

    .line 2221
    iget-object v0, p0, Lajq;->a:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2222
    iget-object v0, p0, Lajq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2223
    iput-object v1, p0, Lajq;->a:Ljava/util/List;

    .line 2227
    :cond_a
    iput-object v1, p0, Lajq;->a:Landroid/widget/RelativeLayout;

    .line 2229
    iput-object v1, p0, Lajq;->c:Landroid/widget/LinearLayout;

    .line 2231
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2107
    instance-of v0, p1, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    if-eqz v0, :cond_1

    .line 2108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2109
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2110
    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2111
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    move-object v0, p1

    .line 2112
    check-cast v0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->b(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move-object v0, p1

    .line 2113
    check-cast v0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->c()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lajq;->a:F

    invoke-static {v0, v2}, Lald;->a(Ljava/lang/String;F)I

    move-result v2

    move-object v0, p1

    check-cast v0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lald;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2115
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2120
    :cond_1
    :goto_0
    return v3

    .line 2116
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2117
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
