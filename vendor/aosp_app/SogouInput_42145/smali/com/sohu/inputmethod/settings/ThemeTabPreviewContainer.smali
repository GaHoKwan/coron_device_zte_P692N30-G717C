.class public Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lage;

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Bitmap;

.field a:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/Button;

.field public a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field a:Lhd;

.field private a:Lhk;

.field private a:Ljava/lang/String;

.field public a:Z

.field private b:Landroid/graphics/Bitmap;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private b:Z

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Z

    .line 62
    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Z

    .line 100
    new-instance v0, Lagy;

    invoke-direct {v0, p0}, Lagy;-><init>(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lagz;

    invoke-direct {v0, p0}, Lagz;-><init>(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lhd;

    .line 66
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lage;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lhk;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    :cond_0
    iput-object p2, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    .line 240
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_1
    return-void
.end method

.method private a(Landroid/widget/ImageView;Lhk;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x7f020159

    .line 198
    if-eqz p1, :cond_1

    .line 199
    iget-boolean v0, p2, Lhk;->d:Z

    if-eqz v0, :cond_4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 203
    iput-boolean v5, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Z

    .line 204
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    .line 206
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 212
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_7

    .line 215
    iput-boolean v5, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Z

    .line 216
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    :cond_5
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    .line 218
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 220
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 223
    :cond_7
    iget-object v0, p2, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 224
    iput-boolean v4, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Z

    .line 225
    iget-object v0, p2, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->c:Landroid/graphics/Bitmap;

    .line 226
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 228
    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    return-void
.end method

.method private b(Landroid/widget/ImageView;Lhk;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f020051

    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-boolean v0, p2, Lhk;->d:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p2, Lhk;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The previewPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Ljava/lang/String;)V

    .line 252
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 254
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    .line 256
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 257
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 258
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p2, Lhk;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p2, Lhk;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const v0, 0x7f070204

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f070205

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f070206

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f070207

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f070209

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f070208

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 85
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_0
    const v0, 0x7f07020a

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 91
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_1
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-static {p3}, Lgy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lage;

    iget-object v1, v1, Lage;->a:Lgy;

    invoke-virtual {v1, v0}, Lgy;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    const v0, 0x7f020051

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p2, Lhk;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lhd;

    invoke-virtual {v0, v1, p3, v2, v3}, Lgy;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lhd;)V

    goto :goto_0
.end method

.method public a(Lhk;)V
    .locals 4
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhk;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lhk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhk;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhk;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    const v3, 0x7f0b031d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lhk;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_1
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Lhk;)Z
    .locals 2
    .parameter

    .prologue
    .line 348
    .line 349
    iget-object v0, p1, Lhk;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Laox;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 355
    :goto_0
    return v0

    .line 353
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/graphics/Bitmap;

    .line 291
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/graphics/Bitmap;

    .line 292
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->c:Landroid/graphics/Bitmap;

    .line 293
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->d:Landroid/graphics/Bitmap;

    .line 294
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/LinearLayout;

    .line 295
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    .line 296
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/TextView;

    .line 297
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/TextView;

    .line 298
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    .line 299
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/Button;

    .line 300
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/Button;

    .line 302
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lage;

    .line 303
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    .line 304
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lhk;

    .line 305
    invoke-static {}, Laox;->a()V

    .line 306
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 314
    sget v1, Lage;->b:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 315
    sget v2, Lage;->a:F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 317
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 318
    return-void
.end method

.method public setDimCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 153
    return-void
.end method

.method public setIconImageView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method public setService(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lage;

    .line 138
    return-void
.end method

.method public setTheme(Lhk;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lhk;

    .line 142
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :cond_0
    sget-object v0, Laox;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Lhk;

    iget-object v1, v1, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Landroid/widget/ImageView;Lhk;)V

    .line 145
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lhk;)V

    .line 146
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b(Landroid/widget/ImageView;Lhk;)V

    .line 147
    iget-boolean v0, p1, Lhk;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Ljava/lang/Boolean;)V

    .line 149
    return-void
.end method
