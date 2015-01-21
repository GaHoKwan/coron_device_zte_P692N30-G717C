.class public Lajm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private a:F

.field private a:I

.field private a:Lakz;

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/PopupWindow;

.field private a:Landroid/widget/ProgressBar;

.field private a:Ljava/lang/Thread;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "BigImgWindow"

    sput-object v0, Lajm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/PopupWindow;Ljava/lang/String;Ljava/lang/String;IIFLakz;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lajm;->b:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lajm;->c:Ljava/lang/String;

    .line 38
    const/16 v0, 0x140

    iput v0, p0, Lajm;->a:I

    .line 39
    const/16 v0, 0x1e0

    iput v0, p0, Lajm;->b:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lajm;->c:I

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lajm;->d:I

    .line 49
    const/high16 v0, 0x3f80

    iput v0, p0, Lajm;->a:F

    .line 50
    iput-object v1, p0, Lajm;->a:Ljava/lang/Thread;

    .line 81
    new-instance v0, Lajn;

    invoke-direct {v0, p0}, Lajn;-><init>(Lajm;)V

    iput-object v0, p0, Lajm;->a:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lajm;->a:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lajm;->a:Landroid/view/View;

    .line 70
    iput-object p3, p0, Lajm;->a:Landroid/widget/PopupWindow;

    .line 71
    iput-object p4, p0, Lajm;->b:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lajm;->c:Ljava/lang/String;

    .line 73
    iput p6, p0, Lajm;->a:I

    .line 74
    iput p7, p0, Lajm;->b:I

    .line 75
    iget v0, p0, Lajm;->d:I

    int-to-float v0, v0

    mul-float/2addr v0, p8

    float-to-int v0, v0

    iput v0, p0, Lajm;->d:I

    .line 76
    iput-object p9, p0, Lajm;->a:Lakz;

    .line 77
    iput p8, p0, Lajm;->a:F

    .line 78
    invoke-virtual {p0}, Lajm;->a()V

    .line 79
    return-void
.end method

.method static synthetic a(Lajm;)F
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lajm;->a:F

    return v0
.end method

.method static synthetic a(Lajm;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lajm;->a:I

    return v0
.end method

.method static synthetic a(Lajm;)Lakz;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->a:Lakz;

    return-object v0
.end method

.method static synthetic a(Lajm;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lajm;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lajm;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lajm;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic a(Lajm;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lajm;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lajm;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lajm;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lajm;->c:I

    return v0
.end method

.method static synthetic c(Lajm;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lajm;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/high16 v5, 0x3f00

    const/4 v6, 0x0

    .line 152
    iget-object v0, p0, Lajm;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    const v0, 0x7f070160

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lajm;->a:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f070161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lajm;->a:Landroid/widget/ProgressBar;

    .line 156
    iget-object v0, p0, Lajm;->a:Lakz;

    iget-object v2, p0, Lajm;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lakz;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 157
    iget-object v0, p0, Lajm;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    if-eqz v2, :cond_3

    .line 162
    iget-object v3, p0, Lajm;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 168
    iget v4, p0, Lajm;->d:I

    if-lt v3, v4, :cond_0

    iget v4, p0, Lajm;->d:I

    if-ge v2, v4, :cond_2

    .line 170
    :cond_0
    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    div-float/2addr v2, v3

    .line 171
    cmpl-float v3, v2, v7

    if-lez v3, :cond_1

    .line 174
    iget v3, p0, Lajm;->d:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 176
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 192
    :goto_0
    iget v2, p0, Lajm;->c:I

    iget v3, p0, Lajm;->c:I

    iget v4, p0, Lajm;->c:I

    iget v5, p0, Lajm;->c:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 193
    iget-object v2, p0, Lajm;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v0, p0, Lajm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lajm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lajm;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lajm;->a:Landroid/view/View;

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 199
    new-instance v0, Lajo;

    invoke-direct {v0, p0}, Lajo;-><init>(Lajm;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    new-instance v0, Lajp;

    invoke-direct {v0, p0}, Lajp;-><init>(Lajm;)V

    iput-object v0, p0, Lajm;->a:Ljava/lang/Thread;

    .line 245
    iget-object v0, p0, Lajm;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-void

    .line 179
    :cond_1
    iget v3, p0, Lajm;->d:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 180
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v3, v3

    div-float v2, v3, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 183
    :cond_2
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 184
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lajm;->a:Landroid/widget/ImageView;

    const v3, 0x7f020098

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget v2, p0, Lajm;->d:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 190
    iget v2, p0, Lajm;->d:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lajm;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lajm;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lajm;->a:Ljava/lang/Thread;

    .line 253
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lajm;->a:Landroid/widget/PopupWindow;

    invoke-static {v0}, Laox;->a(Landroid/widget/PopupWindow;)V

    .line 257
    iget-object v0, p0, Lajm;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lajm;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v0, p0, Lajm;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    iput-object v1, p0, Lajm;->a:Landroid/widget/ImageView;

    .line 262
    :cond_0
    iput-object v1, p0, Lajm;->a:Landroid/widget/PopupWindow;

    .line 263
    return-void
.end method
