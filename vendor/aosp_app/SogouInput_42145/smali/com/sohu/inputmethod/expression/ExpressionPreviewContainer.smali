.class public Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lqb;


# static fields
.field private static final a:I

.field private static a:Ljava/lang/String;

.field private static final b:I


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

.field private a:Lcom/sohu/inputmethod/expression/PreviewPager;

.field private a:Ljava/lang/Thread;

.field private a:Loz;

.field private a:Lpb;

.field private a:Lpc;

.field a:Lpi;

.field private a:Z

.field private a:[Ljava/lang/String;

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Ljava/lang/Thread;

.field private b:[Ljava/lang/String;

.field private c:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "ExpressionPreviewContainer"

    sput-object v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Ljava/lang/String;

    .line 54
    const/high16 v0, 0x4248

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:I

    .line 55
    const/high16 v0, 0x4396

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Z

    .line 127
    new-instance v0, Lop;

    invoke-direct {v0, p0}, Lop;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/os/Handler;

    .line 180
    new-instance v0, Lor;

    invoke-direct {v0, p0}, Lor;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Loz;

    .line 227
    new-instance v0, Los;

    invoke-direct {v0, p0}, Los;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lot;

    invoke-direct {v0, p0}, Lot;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lou;

    invoke-direct {v0, p0}, Lou;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/view/View$OnClickListener;

    .line 290
    new-instance v0, Lov;

    invoke-direct {v0, p0}, Lov;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Low;

    invoke-direct {v0, p0}, Low;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Lox;

    invoke-direct {v0, p0}, Lox;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpi;

    .line 384
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    .line 385
    new-instance v0, Lpc;

    invoke-direct {v0}, Lpc;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpc;

    .line 386
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Lcom/sohu/inputmethod/expression/PreviewPager;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Lpb;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpb;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    .line 785
    new-instance v0, Loy;

    invoke-direct {v0, p0, p3, p2, p1}, Loy;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/Thread;

    .line 814
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 815
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:[Ljava/lang/String;

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 445
    if-gez v1, :cond_0

    .line 442
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_1

    .line 449
    :cond_1
    const/4 v0, 0x1

    .line 453
    :cond_2
    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 819
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    sget v1, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:I

    invoke-static {v0, v1}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    .line 834
    new-instance v0, Loq;

    invoke-direct {v0, p0, p3, p2, p1}, Loq;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Ljava/lang/Thread;

    .line 863
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 864
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 882
    .line 886
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 887
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 889
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 890
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 891
    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    .line 893
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 894
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v3

    move-object v3, v4

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 899
    :goto_1
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 901
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 904
    :cond_0
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 905
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 906
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 908
    :goto_2
    return v0

    .line 896
    :cond_1
    const/4 v1, 0x1

    .line 904
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 905
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 906
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 896
    goto :goto_2

    .line 904
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 905
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 906
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 904
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v3

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    .line 897
    :catch_1
    move-exception v0

    move-object v0, v3

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 868
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    sget v1, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:I

    invoke-static {v0, v1}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    const v2, 0x7f02014f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 874
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 878
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 701
    const-string v0, "[[[[[[[[[[[[[[[[[[[[[[recycleContainer]]]]]]]]]]]]]]]]]]]]]]]]]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 702
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    .line 703
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:[Ljava/lang/String;

    .line 704
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpb;

    .line 705
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->removeAllViews()V

    .line 706
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()V

    .line 707
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 708
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpc;

    invoke-virtual {v0}, Lpc;->a()V

    .line 709
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpc;

    invoke-virtual {v0}, Lpc;->b()V

    .line 710
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 718
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 644
    const-string v0, "[[[[[[[[[[[[[[[[[[[[[onPageSelected]]]]]]]]]]]]]]]]]]]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 647
    :goto_0
    if-ge v0, v2, :cond_1

    .line 648
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 649
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    add-int/lit16 v5, p1, 0x80

    if-ne v4, v5, :cond_0

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "view.setSelected(true)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 651
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 647
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "view.setSelected(false)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 659
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v1, 0x7f02006d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 662
    packed-switch p1, :pswitch_data_0

    .line 697
    :goto_0
    return-void

    .line 664
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 666
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b048a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 668
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 677
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b048c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 685
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 687
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    const v2, 0x7f0b0489

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 689
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILpb;Lnp;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 458
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->a:Ljava/lang/String;

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 462
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->g:Ljava/lang/String;

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    const v5, 0x7f0b048d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 466
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->d:Ljava/lang/String;

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    const v5, 0x7f0b048e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 470
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->j:Ljava/lang/String;

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_5
    const/4 v2, 0x0

    .line 480
    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 482
    const/4 v2, 0x1

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Ljava/lang/String;

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 489
    const/4 v2, 0x1

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    :goto_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Ljava/lang/String;

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 496
    const/4 v2, 0x1

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    :goto_2
    if-eqz v2, :cond_c

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :goto_3
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Ljava/lang/String;

    .line 516
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Z

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    if-eqz v2, :cond_6

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->setNeedCollectVerticalScroll(Z)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->scrollTo(II)V

    .line 523
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->l:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    const v3, 0x7f02014f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->f:Ljava/lang/String;

    .line 527
    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->l:Ljava/lang/String;

    .line 528
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 529
    if-ltz v4, :cond_7

    .line 530
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laox;->aw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->p:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/RelativeLayout;

    const v3, -0x131314

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 539
    move-object/from16 v0, p3

    iget-object v2, v0, Lnp;->f:Ljava/lang/String;

    .line 540
    move-object/from16 v0, p3

    iget-object v3, v0, Lnp;->p:Ljava/lang/String;

    .line 541
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 542
    if-ltz v4, :cond_8

    .line 543
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laox;->aw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 545
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_14

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/expression/PreviewPager;->setNeedCollectHorizontallScroll(Z)V

    .line 552
    move-object/from16 v0, p3

    iget-object v4, v0, Lnp;->f:Ljava/lang/String;

    .line 553
    move-object/from16 v0, p3

    iget v10, v0, Lnp;->a:I

    .line 554
    move-object/from16 v0, p3

    iget v11, v0, Lnp;->b:I

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 556
    const/high16 v3, 0x4080

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v12, v3

    .line 557
    const/high16 v3, 0x4120

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v13, v2

    .line 558
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v14, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 560
    const/4 v3, -0x1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mImageUrls.length============================="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 563
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v8, v2, :cond_12

    .line 564
    new-instance v15, Lpa;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lpa;-><init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Landroid/content/Context;)V

    .line 565
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    aget-object v2, v2, v8

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 568
    if-gez v2, :cond_d

    move v3, v9

    .line 563
    :goto_5
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto :goto_4

    .line 485
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 492
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 499
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 504
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 571
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpc;

    invoke-virtual {v2, v5}, Lpc;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 573
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 574
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpc;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:[Ljava/lang/String;

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpi;

    invoke-virtual/range {v2 .. v7}, Lpc;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpi;)V

    .line 579
    :goto_6
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 582
    const v2, 0x7f0200b5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 584
    const/4 v3, -0x1

    if-eq v9, v3, :cond_f

    .line 585
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 586
    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 588
    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    add-int/lit16 v2, v8, 0x80

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 592
    add-int/lit16 v3, v8, 0x80

    .line 593
    if-nez v8, :cond_10

    .line 594
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 596
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v2, v15}, Lcom/sohu/inputmethod/expression/PreviewPager;->addView(Landroid/view/View;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 577
    :cond_11
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 600
    :cond_12
    if-eqz p2, :cond_13

    .line 601
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpb;

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lpb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Loz;

    invoke-interface {v2, v3}, Lpb;->a(Loz;)V

    .line 604
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(II)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/expression/PreviewPager;->requestLayout()V

    .line 614
    :cond_14
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/app/Activity;

    .line 390
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    .line 391
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/RelativeLayout;

    .line 392
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/RelativeLayout;

    .line 393
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/expression/PreviewPager;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    .line 394
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->setGuidePageChangeListener(Lqb;)V

    .line 395
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/TextView;

    .line 397
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/TextView;

    .line 398
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    .line 399
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->setGuidePageChangeListener(Lqb;)V

    .line 400
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    .line 401
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/TextView;

    .line 403
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Landroid/widget/TextView;

    .line 404
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Landroid/widget/TextView;

    .line 405
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    .line 406
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->g:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/ImageView;

    .line 408
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/ImageView;

    .line 410
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/ImageView;

    .line 412
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 769
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 772
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 773
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 774
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 775
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 758
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 759
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 760
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 761
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0xff

    if-lt v0, v4, :cond_1

    .line 762
    const/4 v2, 0x1

    .line 765
    :cond_0
    return v2

    .line 758
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 721
    const-string v0, "[[[[[[[[[[[[[[[[[[[[[[recycle]]]]]]]]]]]]]]]]]]]]]]]]]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a()V

    .line 723
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    .line 724
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/RelativeLayout;

    .line 725
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    .line 726
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/RelativeLayout;

    .line 727
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/TextView;

    .line 728
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/TextView;

    .line 729
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/TextView;

    .line 731
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->h:Landroid/widget/TextView;

    .line 732
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/Button;

    .line 733
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/TextView;

    .line 734
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->e:Landroid/widget/TextView;

    .line 735
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->f:Landroid/widget/TextView;

    .line 736
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/widget/ImageView;

    .line 737
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Landroid/widget/ImageView;

    .line 738
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c:Landroid/widget/ImageView;

    .line 739
    iput-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d:Landroid/widget/ImageView;

    .line 742
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/PreviewPager;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Z

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gb:I

    .line 752
    :cond_0
    return-void
.end method

.method public setPreviewImageSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:Ljava/lang/String;

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b:[Ljava/lang/String;

    invoke-static {p2, v0}, Lpc;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setShowLocation(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExpressionPreviewScrollView margin left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 423
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 424
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    return-void
.end method
