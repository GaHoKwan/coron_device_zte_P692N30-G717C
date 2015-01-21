.class public Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static a:I

.field public static a:Z

.field private static final a:[I

.field private static b:F

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static e:I

.field private static final e:[I

.field private static f:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private a:F

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Laxp;

.field private a:Laxt;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Vector;

.field private b:I

.field private b:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Rect;

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/Vector;

.field private b:Z

.field private c:F

.field private c:I

.field private c:Landroid/graphics/Rect;

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private c:Ljava/util/Vector;

.field private c:Z

.field private d:F

.field private d:I

.field private d:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/util/Vector;

.field private d:Z

.field private e:F

.field private e:Landroid/graphics/Rect;

.field private e:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/util/Vector;

.field private f:F

.field private f:I

.field private f:Landroid/graphics/Rect;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:F

.field private g:I

.field private g:Landroid/graphics/Rect;

.field private g:Landroid/graphics/drawable/Drawable;

.field private g:[I

.field private h:F

.field private h:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Z

    .line 59
    const/16 v0, 0xd

    sput v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:[I

    .line 96
    const/16 v0, 0x1c8

    sput v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:[I

    .line 99
    const/high16 v0, 0x431e

    sput v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:F

    return-void

    .line 63
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_1
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_2
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 97
    :array_5
    .array-data 0x4
        0x1t 0x1t 0x0t 0x0t
        0xdet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    .line 124
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    .line 130
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    .line 149
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Bitmap;

    .line 150
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Bitmap;

    .line 151
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    .line 154
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/lang/String;

    .line 160
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Z

    .line 161
    iput v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->P:I

    .line 162
    iput v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->Q:I

    .line 163
    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    .line 165
    iput v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    .line 169
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    .line 170
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    .line 171
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    .line 172
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    .line 173
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    .line 174
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    .line 175
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a()V

    .line 176
    return-void
.end method

.method private a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1051
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private a(FF)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 627
    const/4 v3, -0x1

    move v1, v2

    .line 630
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 632
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    .line 647
    :goto_1
    return v1

    .line 630
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 637
    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 639
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-ltz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    .line 640
    add-int/lit8 v1, v2, 0x4

    goto :goto_1

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_4

    .line 645
    const/4 v1, 0x7

    goto :goto_1

    :cond_4
    move v1, v3

    .line 647
    goto :goto_1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1157
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1161
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1164
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1165
    return-object v0

    .line 1157
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    if-gt v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    aget v0, v0, v2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    .line 274
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    .line 290
    :goto_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h()V

    .line 291
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e()V

    .line 292
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->l:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    .line 294
    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->O:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->F:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    sub-int/2addr v0, v1

    .line 277
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d()I

    move-result v1

    sub-int v1, p1, v1

    if-gt v1, v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    aget v0, v0, v3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    .line 279
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    goto :goto_0

    .line 281
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    if-lt v1, v0, :cond_2

    .line 282
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    .line 283
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    .line 286
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1009
    packed-switch p1, :pswitch_data_0

    .line 1037
    :goto_0
    return-void

    .line 1011
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Z)V

    goto :goto_0

    .line 1014
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d(Z)V

    goto :goto_0

    .line 1017
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Z)V

    goto :goto_0

    .line 1020
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c(Z)V

    goto :goto_0

    .line 1023
    :pswitch_4
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :pswitch_5
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :pswitch_6
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :pswitch_7
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i()V

    goto :goto_0

    .line 1009
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Landroid/graphics/Canvas;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c(Landroid/graphics/Canvas;)V

    .line 669
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 672
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 673
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 675
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 676
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 677
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b037d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Landroid/graphics/Paint;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    .line 682
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 685
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(I)[I

    move-result-object v2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;[ILandroid/graphics/Rect;II)V

    .line 686
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(I)[I

    move-result-object v2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x4

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;[ILandroid/graphics/Rect;II)V

    .line 687
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(I)[I

    move-result-object v2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x5

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;[ILandroid/graphics/Rect;II)V

    .line 688
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 690
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 691
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 693
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 694
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 695
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 696
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 710
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 712
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    .line 714
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 716
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 717
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 718
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 719
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 720
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 721
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 722
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    .line 723
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Bitmap;

    .line 724
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Bitmap;

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 728
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 729
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 730
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 733
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    .line 734
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 736
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 737
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    .line 738
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 743
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 744
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Landroid/graphics/Paint;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 746
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 747
    return-void

    .line 698
    :cond_4
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 700
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 701
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 703
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 704
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 705
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 706
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 883
    const-string v0, "drawSlipDrawable"

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 885
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 886
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    sub-int/2addr v0, v1

    .line 888
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 889
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, p8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 898
    :goto_0
    invoke-virtual {p5, p7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 899
    invoke-virtual {p5, p8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 900
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 902
    invoke-virtual {p6, p7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 903
    invoke-virtual {p6, p8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 904
    invoke-virtual {p6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 905
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 906
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    add-int/2addr v4, v0

    iget v5, p8, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->M:I

    add-int/2addr v5, v6

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 907
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 909
    :cond_0
    return-void

    .line 892
    :cond_1
    iget v0, p8, Landroid/graphics/Rect;->left:I

    .line 893
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 895
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, p8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 749
    const-string v0, "drawSlipArea"

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 752
    const-string v0, ""

    .line 753
    packed-switch p6, :pswitch_data_0

    move-object v1, v0

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    invoke-virtual {v0, p6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    invoke-virtual {v0, p6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    invoke-virtual {v0, p6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v0

    int-to-double v4, v0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Landroid/graphics/Paint;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 771
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    invoke-virtual {v0, p6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 772
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    if-eq p6, v0, :cond_0

    .line 773
    invoke-direct {p0, p6}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v7

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    invoke-virtual {v0, p6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 777
    :goto_1
    return-void

    .line 755
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 756
    goto :goto_0

    .line 758
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 759
    goto :goto_0

    .line 761
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 762
    goto :goto_0

    .line 764
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 775
    :cond_0
    invoke-direct {p0, p6}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v6

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    invoke-virtual {v0, p6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 780
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 782
    iget-boolean v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    if-eqz v1, :cond_8

    .line 783
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_1

    .line 784
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 785
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 786
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p7

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 788
    move-object/from16 v0, p6

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 789
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 790
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 792
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 793
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 794
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 796
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 797
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v1

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->M:I

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 798
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_2

    .line 800
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 801
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 802
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p7

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 804
    move-object/from16 v0, p6

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 805
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 806
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 808
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 809
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 810
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 812
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v1

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->M:I

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 817
    :cond_2
    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 820
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:F

    div-float/2addr v3, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 822
    if-lez v1, :cond_4

    .line 823
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 824
    :cond_3
    const/4 v5, 0x0

    .line 825
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v6, v3, v5

    .line 826
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    sub-int v7, v2, v1

    sub-int/2addr v3, v7

    int-to-double v7, v3

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    double-to-float v7, v7

    .line 827
    int-to-float v3, v1

    sub-float/2addr v3, v7

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-lez v3, :cond_5

    int-to-float v1, v1

    sub-float/2addr v1, v7

    :goto_2
    float-to-int v3, v1

    .line 828
    int-to-float v1, v2

    add-float/2addr v1, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v1, v1, v8

    if-lez v1, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_3
    float-to-int v1, v1

    .line 829
    sub-int v2, v1, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 830
    if-eqz v2, :cond_a

    .line 831
    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 832
    sub-int v2, v3, v2

    .line 837
    :goto_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 838
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p7

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 840
    move-object/from16 v0, p6

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 841
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 842
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 844
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 845
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 846
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 848
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 849
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->M:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 850
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 822
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 827
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 828
    :cond_6
    int-to-float v1, v2

    add-float/2addr v1, v7

    goto/16 :goto_3

    .line 834
    :cond_7
    add-int/2addr v1, v2

    move v2, v3

    goto/16 :goto_4

    .line 855
    :cond_8
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 856
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 857
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 858
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p7

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 866
    :goto_5
    move-object/from16 v0, p6

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 867
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 868
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 870
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 871
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 872
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 874
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 875
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v1

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->M:I

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 876
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 861
    :cond_9
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 862
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 863
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p7

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_a
    move v2, v3

    goto/16 :goto_4
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 652
    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 654
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 655
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 656
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 658
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;[ILandroid/graphics/Rect;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    invoke-virtual {v0, p4}, Laxp;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    packed-switch p4, :pswitch_data_0

    .line 922
    :goto_0
    invoke-direct {p0, p5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    invoke-virtual {v1, p4}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 924
    if-eqz v1, :cond_0

    .line 925
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 926
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 927
    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 928
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 929
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 935
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 936
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 937
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v2

    double-to-int v2, v2

    .line 938
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    .line 939
    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b(Landroid/graphics/Paint;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    .line 940
    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 941
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    return-void

    .line 914
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b04a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 916
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b04a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 918
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lawe;Laxp;Laxt;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object p2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    .line 506
    iput-object p3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxt;

    .line 508
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    .line 509
    invoke-virtual {p1}, Lawe;->b()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    .line 514
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 516
    invoke-virtual {p1}, Lawe;->a()Lawv;

    move-result-object v0

    .line 517
    iget v1, v0, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:I

    .line 518
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:I

    .line 519
    iget v0, v0, Lawv;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 520
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    .line 521
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 523
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 524
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->invalidate()V

    .line 525
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->requestLayout()V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    return-void
.end method

.method private a(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b00ad

    const v4, 0x7f0b0049

    const v5, 0x7f0b00ac

    .line 1060
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1062
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1063
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1064
    if-eqz p1, :cond_0

    .line 1065
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1066
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/lang/String;

    .line 1071
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1072
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    .line 1075
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->da:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->da:I

    .line 1076
    return-void

    .line 1068
    :cond_0
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1069
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 965
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1004
    :cond_0
    :goto_0
    return v0

    .line 967
    :pswitch_0
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v4, 0x7f0b00ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    .line 970
    goto :goto_0

    .line 973
    :pswitch_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Z

    goto :goto_0

    .line 975
    :pswitch_2
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->P:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 977
    :pswitch_3
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->Q:I

    if-gtz v2, :cond_0

    move v0, v1

    .line 980
    goto :goto_0

    .line 983
    :pswitch_4
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 986
    goto :goto_0

    .line 990
    :pswitch_5
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 993
    goto :goto_0

    .line 997
    :pswitch_6
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1000
    goto :goto_0

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private a(I)[I
    .locals 1
    .parameter

    .prologue
    .line 622
    sget-object v0, Laxr;->i:[I

    .line 623
    return-object v0
.end method

.method private b(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 1055
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1056
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v0, v0

    return-wide v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 946
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 947
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->m:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 950
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 952
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0b00fe

    .line 1134
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1136
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1139
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1140
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    .line 1141
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(I)V

    .line 1142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->de:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->de:I

    .line 1145
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1146
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 1147
    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0045

    .line 1079
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1081
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1082
    if-eqz p1, :cond_0

    .line 1084
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3}, Lafp;->a()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1085
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->a()I

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->P:I

    .line 1093
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1094
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(I)V

    .line 1095
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lamo;->l:I

    .line 1096
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dc:I

    .line 1097
    return-void

    .line 1088
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lafp;->a(I)V

    .line 1090
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1091
    iput v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->P:I

    goto :goto_0
.end method

.method private b(I)[I
    .locals 1
    .parameter

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    sget-object v0, Laxr;->e:[I

    .line 1046
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    sget-object v0, Laxr;->i:[I

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 955
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->G:I

    .line 956
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 957
    :goto_0
    iget-boolean v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxt;

    invoke-virtual {v3, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 959
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->j:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->j:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    add-int/2addr v5, v0

    invoke-direct {v3, v4, v0, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 960
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)[I

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 961
    return-void

    .line 956
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    sub-int/2addr v0, v3

    goto :goto_0

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxt;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method private c(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0043

    .line 1100
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1103
    if-eqz p1, :cond_0

    .line 1105
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3}, Lafp;->c()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1106
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->c()I

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->Q:I

    .line 1114
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1115
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lafp;->a:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(I)V

    .line 1116
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dd:I

    .line 1117
    return-void

    .line 1109
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lafp;->b(I)V

    .line 1111
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1112
    iput v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->Q:I

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 251
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->j:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->G:I

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Laxo;->a(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 253
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->G:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->N:I

    .line 254
    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->G:I

    .line 255
    return-void
.end method

.method private d(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1120
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 1121
    if-eqz p1, :cond_1

    .line 1122
    sput-boolean v1, Lcom/sohu/inputmethod/sogou/SogouIME;->b:Z

    .line 1123
    iput-boolean v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Z

    .line 1128
    :goto_0
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, -0x2c

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1129
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->db:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->db:I

    .line 1131
    :cond_0
    return-void

    .line 1125
    :cond_1
    sput-boolean v3, Lcom/sohu/inputmethod/sogou/SogouIME;->b:Z

    .line 1126
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Z

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 258
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int v0, v1, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->m:I

    .line 259
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->m:I

    int-to-float v0, v0

    sget-object v1, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:[I

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    .line 260
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(F)F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    .line 261
    sget v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->l:I

    .line 262
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->l:I

    .line 266
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->l:I

    int-to-float v0, v0

    sget v1, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    .line 267
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(F)F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    .line 268
    sget-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:[I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->m:I

    .line 269
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4361

    const/4 v3, 0x1

    .line 297
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f()V

    .line 298
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    .line 299
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->m:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------   ---------   mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->H:I

    if-ne v0, v3, :cond_3

    .line 302
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    if-le v0, v1, :cond_2

    .line 303
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    .line 304
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h()V

    .line 305
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->m:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    .line 306
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->O:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->F:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    sub-int/2addr v0, v1

    .line 307
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_1

    .line 308
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    .line 309
    :cond_0
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)V

    .line 321
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d()V

    .line 322
    return-void

    .line 313
    :cond_2
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    goto :goto_0

    .line 315
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 316
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->F:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->O:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3fb33333

    mul-float/2addr v0, v1

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 317
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_4

    .line 318
    int-to-float v1, v0

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v4

    :goto_1
    float-to-int v0, v0

    .line 319
    :cond_4
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)V

    goto :goto_0

    .line 318
    :cond_5
    int-to-float v0, v0

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxt;

    if-eqz v0, :cond_0

    .line 327
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 329
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    .line 330
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->j:I

    .line 332
    :cond_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1150
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 1151
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->m(I)V

    .line 1152
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->df:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->df:I

    .line 1154
    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1179
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1183
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 1184
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1188
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1189
    return v0

    .line 1180
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1186
    :cond_0
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    return v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Z

    .line 191
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->P:I

    .line 192
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lafp;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->Q:I

    .line 193
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b00fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/lang/String;

    .line 195
    sput-boolean v3, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Z

    .line 196
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    .line 240
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowXPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 228
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->N:I

    return v0
.end method

.method public c()V
    .locals 13

    .prologue
    const/high16 v5, 0x4224

    const/high16 v12, 0x4080

    const v4, 0x3f333333

    const/16 v1, 0xd

    const/high16 v11, 0x4040

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resul=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " density="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    .line 338
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:I

    .line 339
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    const/16 v3, 0xf0

    if-gt v0, v3, :cond_2

    .line 340
    const/16 v0, 0xf

    sput v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:I

    .line 343
    :goto_0
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    .line 345
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:I

    .line 346
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    int-to-float v0, v0

    const/high16 v3, 0x43c8

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/high16 v0, 0x43c8

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h()V

    .line 349
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g()V

    .line 350
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    .line 351
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->k:I

    :goto_2
    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INDEX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOffsetScale="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",   mDensity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",   mWidth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",   mHeight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPadding.left="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mPadding.top"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mPadding.right="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mPadding.bottom="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMargin.left="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mMargin.top"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mMargin.right="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mMargin.bottom="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 358
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    .line 359
    const/high16 v0, 0x4140

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    .line 360
    const/high16 v0, 0x4200

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    .line 362
    const/high16 v0, 0x42a4

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    .line 363
    const/high16 v0, 0x42a8

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    .line 364
    const/high16 v0, 0x4268

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->t:I

    .line 365
    const/high16 v0, 0x3f80

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->n:I

    .line 366
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->n:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->n:I

    :goto_3
    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->n:I

    .line 367
    const/high16 v0, 0x4210

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    .line 369
    const/high16 v0, 0x42d0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    .line 370
    const/high16 v0, 0x41f0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    .line 371
    const/high16 v0, 0x41e0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->J:I

    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Laxp;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Laxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 374
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->K:I

    .line 375
    const/4 v4, 0x0

    iput v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->L:I

    .line 376
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->M:I

    .line 378
    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlipButtonSquareWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   mSlipButtonSquareHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->J:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  mSlipButtonWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   mSlipButtonHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ooooffest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=====================slipball width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====================slipimage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",   h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 384
    const/high16 v0, 0x4190

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    .line 385
    const-string v0, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    .line 388
    :cond_1
    sget v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:F

    .line 389
    sget v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:F

    .line 391
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:F

    float-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    double-to-float v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:F

    .line 393
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 394
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 395
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 396
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 397
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 399
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    const v3, 0x7f0b01b5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 401
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v12

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    .line 403
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    const/high16 v5, 0x40e0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->x:I

    .line 404
    sget-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:[I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->y:I

    .line 405
    sget-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:[I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    .line 406
    sget-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:[I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    .line 407
    sget-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:[I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->B:I

    .line 408
    sget-object v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:[I

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->C:I

    .line 409
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->y:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    .line 410
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    :goto_4
    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMargin_x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",                 mXPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",   mYPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMargin_y1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  mMargin_y2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMargin_y3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMargin_y4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMargin_y5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    .line 416
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    .line 417
    new-instance v3, Landroid/graphics/Rect;

    int-to-float v4, v0

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    mul-float/2addr v5, v11

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v5, v1

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/Rect;

    .line 419
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v0, v1

    .line 420
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    .line 421
    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    sub-int/2addr v3, v4

    .line 422
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v5, v1

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/Rect;

    .line 423
    sub-int v4, v3, v0

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->t:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 424
    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    int-to-float v6, v6

    sub-int v7, v3, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    .line 425
    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    int-to-float v6, v6

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float v3, v6, v3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    .line 427
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->y:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v7, v1

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->y:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v7, v1

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->r:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->s:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->y:I

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v1, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    invoke-direct {v4, v0, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 441
    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    .line 442
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    add-int v4, v0, v1

    .line 443
    int-to-float v0, v3

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    mul-float/2addr v1, v11

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 444
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int v6, v4, v0

    .line 446
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v8, v9

    invoke-direct {v1, v7, v4, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v4, v8

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v9, v5

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v0, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 455
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 456
    int-to-float v0, v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    mul-float/2addr v2, v11

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 465
    :goto_5
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v4, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v8, v0

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v9, v0

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v8, v0

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->z:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v4, v9

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v9, v0

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    invoke-direct {v7, v8, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 469
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->v:I

    .line 470
    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    add-int/2addr v4, v6

    .line 472
    iget v6, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->p:I

    add-int/2addr v6, v4

    .line 473
    iget-object v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v9, v5

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v4, v9

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v5, v10

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v5, v10

    iget v10, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->B:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    invoke-direct {v7, v8, v9, v5, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Ljava/util/Vector;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v4, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v5, v0

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v7, v8

    invoke-direct {v2, v5, v4, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v5, v0

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->A:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->B:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    invoke-direct {v2, v5, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 486
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->B:I

    add-int/2addr v1, v6

    .line 487
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v0, v2

    .line 488
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->B:I

    add-int/2addr v2, v6

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->n:I

    add-int/2addr v2, v4

    .line 489
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/Rect;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*****************mVerticalLineRect.left="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",  top="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",  right="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",  bottom="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->d:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 493
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 494
    sub-int v1, v0, v1

    .line 495
    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->C:I

    add-int/2addr v2, v3

    .line 497
    int-to-double v3, v2

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 498
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:Landroid/graphics/Rect;

    .line 499
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->C:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    invoke-direct {v3, v1, v2, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:Landroid/graphics/Rect;

    .line 500
    return-void

    .line 342
    :cond_2
    sput v1, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:I

    goto/16 :goto_0

    .line 346
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:I

    int-to-float v0, v0

    goto/16 :goto_1

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    goto/16 :goto_2

    .line 366
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 410
    goto/16 :goto_4

    .line 459
    :cond_7
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->u:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->x:I

    add-int/2addr v1, v0

    .line 460
    int-to-float v0, v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:F

    mul-float/2addr v2, v12

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 615
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 616
    const-string v0, "onDraw"

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Landroid/graphics/Canvas;)V

    .line 618
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 532
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 533
    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->h:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->i:I

    if-eq v1, v2, :cond_1

    .line 534
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 609
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 550
    :pswitch_0
    iput-boolean v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    .line 551
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(FF)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    .line 552
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:F

    goto :goto_0

    .line 555
    :pswitch_1
    iput-boolean v5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    .line 556
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->invalidate()V

    goto :goto_0

    .line 559
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 560
    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    .line 561
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0, v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(IZ)V

    .line 563
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    if-ne v0, v6, :cond_0

    .line 564
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dg:I

    .line 602
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    .line 603
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->invalidate()V

    goto/16 :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dh:I

    goto :goto_1

    .line 571
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    div-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 574
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0, v4}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(IZ)V

    .line 575
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    if-ne v0, v6, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dh:I

    goto :goto_1

    .line 580
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0, v4}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(IZ)V

    .line 582
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    if-ne v0, v6, :cond_0

    .line 583
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 584
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dg:I

    goto :goto_1

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dh:I

    goto :goto_1

    .line 590
    :cond_6
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->f:F

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->I:I

    div-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 593
    :cond_7
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0, v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(IZ)V

    .line 594
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    if-ne v0, v6, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dh:I

    goto/16 :goto_1

    .line 600
    :cond_8
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->D:I

    invoke-direct {p0, v0, v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(IZ)V

    goto/16 :goto_1

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput p1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:I

    .line 180
    return-void
.end method

.method public setData(III[II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 199
    iput p1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->E:I

    .line 200
    iput p2, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->F:I

    .line 201
    iput p3, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->G:I

    .line 202
    iput-object p4, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->g:[I

    .line 203
    iput p5, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->O:I

    .line 204
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->H:I

    .line 205
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:F

    .line 206
    iget v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->H:I

    if-ne v0, v1, :cond_1

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    .line 211
    :goto_0
    iput-boolean v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c:Z

    .line 213
    sget-boolean v0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a()V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->c()V

    .line 216
    return-void

    .line 209
    :cond_1
    iput v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->R:I

    goto :goto_0
.end method

.method public setService(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 184
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 244
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 245
    check-cast v0, Laxc;

    iget v1, p0, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->b:I

    invoke-virtual {v0, v1}, Laxc;->a(I)Lawe;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Laxc;

    invoke-virtual {v0}, Laxc;->a()Laxp;

    move-result-object v0

    check-cast p1, Laxc;

    invoke-virtual {p1}, Laxc;->a()Laxt;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->a(Lawe;Laxp;Laxt;)V

    .line 247
    :cond_0
    return-void
.end method
