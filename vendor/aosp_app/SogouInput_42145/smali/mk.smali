.class public Lmk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lmk;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmk;->a:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lmk;
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-object v0, Lmk;->a:Lmk;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lmk;

    invoke-direct {v0, p0}, Lmk;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lmk;->a:Lmk;

    .line 36
    :cond_0
    sget-object v0, Lmk;->a:Lmk;

    return-object v0
.end method

.method private a(Len;Landroid/graphics/Bitmap;Ljava/util/Hashtable;)Ln;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    new-instance v1, Lmg;

    invoke-direct {v1, p2}, Lmg;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    new-instance v2, Lc;

    new-instance v3, Lbp;

    invoke-direct {v3, v1}, Lbp;-><init>(Lh;)V

    invoke-direct {v2, v3}, Lc;-><init>(Lb;)V

    .line 111
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Len;->a(Lc;Ljava/util/Hashtable;)Ln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    throw v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Li;Landroid/graphics/Bitmap;Ljava/util/Hashtable;)Ln;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    new-instance v1, Lmg;

    invoke-direct {v1, p2}, Lmg;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    new-instance v2, Lc;

    new-instance v3, Lbp;

    invoke-direct {v3, v1}, Lbp;-><init>(Lh;)V

    invoke-direct {v2, v3}, Lc;-><init>(Lb;)V

    .line 126
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Li;->a(Lc;Ljava/util/Hashtable;)Ln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    throw v0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==================uri= null ? ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmk;->a(Ljava/lang/String;)V

    .line 45
    :try_start_0
    iget-object v0, p0, Lmk;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 46
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 47
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 48
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmk;->a:Landroid/app/Activity;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 57
    :goto_1
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v5, v1

    if-gt v5, v0, :cond_2

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v5, v1

    if-gt v5, v0, :cond_2

    .line 59
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 60
    const-wide/high16 v5, 0x4000

    int-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v1, v5

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lmk;->a:Landroid/app/Activity;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 71
    const-string v0, "=====================exception=================="

    invoke-static {v0}, Lmk;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 72
    goto :goto_2
.end method

.method public a(Landroid/graphics/Bitmap;)Ln;
    .locals 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 99
    sget-object v1, Le;->e:Le;

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Li;

    invoke-direct {v1}, Li;-><init>()V

    .line 102
    invoke-direct {p0, v1, p1, v0}, Lmk;->a(Li;Landroid/graphics/Bitmap;Ljava/util/Hashtable;)Ln;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ln;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 80
    sget-object v0, Le;->e:Le;

    const-string v2, "utf-8"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Len;

    invoke-direct {v2}, Len;-><init>()V

    .line 83
    invoke-direct {p0, v2, p1, v1}, Lmk;->a(Len;Landroid/graphics/Bitmap;Ljava/util/Hashtable;)Ln;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lmk;->a(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 87
    invoke-direct {p0, v2, v3, v1}, Lmk;->a(Len;Landroid/graphics/Bitmap;Ljava/util/Hashtable;)Ln;

    move-result-object v0

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    :cond_0
    return-object v0
.end method
