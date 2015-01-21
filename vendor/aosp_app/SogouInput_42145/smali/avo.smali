.class public Lavo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:F


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lhk;

.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/high16 v0, -0x4080

    sput v0, Lavo;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhk;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x190

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v7, p0, Lavo;->a:Z

    .line 69
    iput-boolean v7, p0, Lavo;->b:Z

    .line 78
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p2, :cond_0

    .line 80
    iget-boolean v0, p2, Lhk;->d:Z

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p2, Lhk;->d:Ljava/lang/String;

    .line 84
    const-string v0, ""

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".ssf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    sget-object v0, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v3, ".ssf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-static {v1}, Layw;->a(Ljava/io/File;)Z

    .line 96
    :cond_3
    iput-object p1, p0, Lavo;->a:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lavo;->a:Lhk;

    .line 102
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p2, Lhk;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    const-string v3, "skin.ini"

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 104
    if-nez v3, :cond_4

    const-string v3, "Skin.ini"

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 105
    :cond_4
    const-string v4, "/sdcard/sogou/sga/tmp.ini"

    .line 106
    if-eqz v3, :cond_12

    .line 107
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 108
    invoke-static {v5}, Lavi;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 111
    const/4 v5, 0x0

    invoke-static {v3, v6, v4, v5}, Lavi;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 113
    new-instance v3, Layx;

    invoke-direct {v3, v4}, Layx;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :cond_5
    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",,,,,skin id === "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lhk;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavo;->a(Ljava/lang/String;)V

    .line 127
    const-string v1, "Display"

    const-string v4, "zhongwen_color"

    invoke-virtual {v3, v1, v4}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_6

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "000000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    sget v1, Lavo;->a:F

    const/high16 v5, -0x4080

    cmpl-float v1, v1, v5

    if-nez v1, :cond_7

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f020095

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    const/high16 v5, 0x43c8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v5, v1

    sput v1, Lavo;->a:F

    .line 141
    :cond_7
    invoke-direct {p0, v3}, Lavo;->a(Layx;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  1 ######### bmKbBg  ========== "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavo;->a(Ljava/lang/String;)V

    .line 145
    iget-boolean v1, p0, Lavo;->a:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lavo;->b:Z

    if-eqz v1, :cond_c

    .line 146
    invoke-direct {p0, v3, v10}, Lavo;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    sget v2, Lavo;->a:F

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lavo;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 154
    :goto_2
    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 155
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    :goto_3
    const/16 v2, 0x10

    invoke-static {v4, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lavo;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  2 ######### bmKbFore  ========== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavo;->a(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v1, v2}, Lavo;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  3  ######### bmKbPreview  =========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lavo;->a(Ljava/lang/String;)V

    .line 172
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    :cond_9
    iget-object v1, p2, Lhk;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v3}, Lavo;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  4  ######### bmPreviewOfCandAndKB  ========== "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavo;->a(Ljava/lang/String;)V

    .line 178
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/dimcode/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lavo;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  5  ######### bmAll  ========== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavo;->a(Ljava/lang/String;)V

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lavo;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 186
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    :cond_b
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 118
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 121
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 122
    :goto_5
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 121
    throw v0

    .line 148
    :cond_c
    iget-boolean v1, p0, Lavo;->a:Z

    if-eqz v1, :cond_d

    .line 149
    invoke-direct {p0, v3, v10}, Lavo;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    .line 150
    :cond_d
    iget-boolean v1, p0, Lavo;->b:Z

    if-eqz v1, :cond_11

    .line 151
    sget v1, Lavo;->a:F

    float-to-int v1, v1

    invoke-direct {p0, v3, v1}, Lavo;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_2

    .line 158
    :cond_e
    if-eqz v2, :cond_f

    .line 159
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v2

    .line 160
    goto/16 :goto_3

    .line 161
    :cond_f
    if-eqz v1, :cond_10

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 121
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 117
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_10
    move-object v1, v3

    goto/16 :goto_3

    :cond_11
    move-object v1, v2

    goto/16 :goto_2

    :cond_12
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const-string v1, "  1.1 ######## tile hhh"

    invoke-static {v1}, Lavo;->a(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v3, v1, v2

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 203
    goto :goto_0
.end method

.method private a(Lavq;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 333
    const-string v0, "[cutAlphaRegion] enter"

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cutAlphaRegion] bitmap width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 336
    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-object v6

    .line 345
    :cond_1
    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v7, v0, [Z

    .line 347
    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-array v8, v0, [Z

    move v0, v1

    .line 349
    :goto_1
    iget-object v2, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 351
    :goto_2
    iget-object v4, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 352
    iget-object v4, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    .line 357
    :goto_3
    aput-boolean v2, v7, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 359
    :goto_4
    iget-object v2, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_5

    move v2, v1

    .line 361
    :goto_5
    iget-object v4, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_1b

    .line 362
    iget-object v4, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    .line 367
    :goto_6
    aput-boolean v2, v8, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 361
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 369
    :cond_5
    aget-boolean v0, v7, v1

    if-nez v0, :cond_6

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v7, v0

    if-nez v0, :cond_6

    aget-boolean v0, v8, v1

    if-nez v0, :cond_6

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v8, v0

    if-nez v0, :cond_6

    .line 372
    iget-object v6, p1, Lavq;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 374
    :cond_6
    const-string v0, "[cutAlphaRegion] need to cut "

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    move v0, v1

    .line 376
    :goto_7
    array-length v2, v7

    if-ge v0, v2, :cond_7

    .line 377
    aget-boolean v2, v7, v0

    if-nez v2, :cond_b

    :cond_7
    move v2, v1

    .line 381
    :goto_8
    array-length v4, v7

    if-ge v2, v4, :cond_8

    .line 382
    array-length v4, v7

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-boolean v4, v7, v4

    if-nez v4, :cond_c

    :cond_8
    move v4, v1

    .line 386
    :goto_9
    array-length v5, v8

    if-ge v4, v5, :cond_9

    .line 387
    aget-boolean v5, v8, v4

    if-nez v5, :cond_d

    :cond_9
    move v5, v1

    .line 391
    :goto_a
    array-length v9, v8

    if-ge v5, v9, :cond_a

    .line 392
    array-length v9, v8

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-boolean v9, v8, v9

    if-nez v9, :cond_e

    .line 396
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[cutAlphaRegion] left="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " right="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lavo;->a(Ljava/lang/String;)V

    .line 403
    array-length v9, v7

    if-ne v9, v0, :cond_f

    .line 404
    iget-object v6, p1, Lavq;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 376
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 381
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 386
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 391
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 405
    :cond_f
    array-length v9, v7

    sub-int/2addr v9, v2

    sub-int/2addr v9, v0

    if-lez v9, :cond_10

    array-length v9, v8

    sub-int/2addr v9, v5

    sub-int/2addr v9, v4

    if-lez v9, :cond_10

    .line 407
    iget-object v6, p1, Lavq;->a:Landroid/graphics/Bitmap;

    array-length v7, v7

    sub-int/2addr v7, v2

    sub-int/2addr v7, v0

    array-length v8, v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v4

    invoke-static {v6, v0, v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 410
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[cutAlphaRegion] after cut  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lavo;->a(Ljava/lang/String;)V

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[cutAlphaRegion] cut rect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lavo;->a(Ljava/lang/String;)V

    .line 415
    iget-object v7, p1, Lavq;->a:[I

    if-eqz v7, :cond_11

    .line 416
    iget-object v7, p1, Lavq;->a:[I

    aget v8, v7, v3

    sub-int/2addr v8, v0

    aput v8, v7, v3

    .line 417
    iget-object v7, p1, Lavq;->a:[I

    aget v8, v7, v11

    sub-int/2addr v8, v2

    aput v8, v7, v11

    .line 419
    :cond_11
    iget-object v7, p1, Lavq;->b:[I

    if-eqz v7, :cond_12

    .line 420
    iget-object v7, p1, Lavq;->b:[I

    aget v8, v7, v3

    sub-int/2addr v8, v4

    aput v8, v7, v3

    .line 421
    iget-object v3, p1, Lavq;->b:[I

    aget v7, v3, v11

    sub-int/2addr v7, v5

    aput v7, v3, v11

    .line 423
    :cond_12
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    if-eqz v3, :cond_16

    .line 424
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 425
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 426
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 427
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_13

    .line 428
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 429
    :cond_13
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_14

    .line 430
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 431
    :cond_14
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gez v3, :cond_15

    .line 432
    iget-object v3, p1, Lavq;->a:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 433
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[cutAlphaRegion] pinyin_margin = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavq;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavo;->a(Ljava/lang/String;)V

    .line 438
    :cond_16
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    if-eqz v3, :cond_1a

    .line 439
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 440
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 441
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 442
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_17

    .line 443
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 444
    :cond_17
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gez v3, :cond_18

    .line 445
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 446
    :cond_18
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gez v3, :cond_19

    .line 447
    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 448
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cutAlphaRegion] zhongwen_margin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavo;->a(Ljava/lang/String;)V

    .line 455
    :cond_1a
    if-eqz p2, :cond_0

    .line 456
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 457
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 458
    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 459
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_1b
    move v2, v3

    goto/16 :goto_6

    :cond_1c
    move v2, v3

    goto/16 :goto_3
.end method

.method private a(Layx;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 220
    if-nez p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    new-instance v1, Lavq;

    invoke-direct {v1, p0, v0}, Lavq;-><init>(Lavo;Lavp;)V

    .line 224
    invoke-direct {p0, v1, p1}, Lavo;->a(Lavq;Layx;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 229
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    const/high16 v2, 0x3f80

    invoke-direct {p0, v1, v2}, Lavo;->a(Lavq;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadKeyboardBG] bgRect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavo;->a(Ljava/lang/String;)V

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadKeyboardBG] width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavo;->a(Ljava/lang/String;)V

    .line 235
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_2

    .line 237
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 240
    iget-object v3, v1, Lavq;->a:Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v2

    invoke-static {v3, v4, v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    .line 242
    invoke-direct {p0, v1, v0}, Lavo;->a(Lavq;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    .line 244
    :cond_2
    iget-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadKeyboardBG] after cut, width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 247
    iget-object v0, v1, Lavq;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 249
    :cond_3
    invoke-virtual {v1}, Lavq;->a()V

    goto/16 :goto_0
.end method

.method private a(Lavq;F)Landroid/graphics/Rect;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 467
    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 558
    :goto_0
    return-object v0

    .line 469
    :cond_0
    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 470
    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 471
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 472
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 489
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 490
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v7

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 493
    :goto_1
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 526
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 527
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v7

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 529
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] top = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] bottom = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] left = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] right = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavo;->a(Ljava/lang/String;)V

    .line 533
    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_6

    move v0, v1

    :goto_3
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 534
    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_7

    move v0, v1

    :goto_4
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 535
    iget v0, v2, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_8

    int-to-float v0, v3

    mul-float/2addr v0, p2

    :goto_5
    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 536
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_9

    int-to-float v0, v4

    mul-float/2addr v0, p2

    :goto_6
    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 540
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le v0, v3, :cond_1

    .line 541
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 542
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 543
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 545
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_2

    .line 546
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 547
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 548
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 551
    :cond_2
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    move v0, v1

    :goto_7
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 553
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v3, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_8
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 555
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    :goto_9
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 556
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget-object v0, p1, Lavq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_a
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    move-object v0, v2

    .line 558
    goto/16 :goto_0

    .line 475
    :pswitch_0
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 476
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v7

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 479
    :pswitch_1
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v6

    iget-object v5, p1, Lavq;->a:[I

    aget v5, v5, v7

    if-ne v0, v5, :cond_3

    .line 480
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 481
    int-to-float v0, v3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 483
    :cond_3
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 484
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v7

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 496
    :pswitch_2
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v6

    if-lt v0, v4, :cond_4

    .line 497
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 500
    :goto_b
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v7

    if-lt v0, v4, :cond_5

    .line 501
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 499
    :cond_4
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_b

    .line 503
    :cond_5
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v7

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 506
    :pswitch_3
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 507
    int-to-float v0, v4

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 533
    :cond_6
    iget v0, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 534
    :cond_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 535
    :cond_8
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto/16 :goto_5

    .line 536
    :cond_9
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    goto/16 :goto_6

    .line 551
    :cond_a
    iget v0, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_7

    .line 553
    :cond_b
    iget v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_8

    .line 555
    :cond_c
    iget v1, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_9

    .line 556
    :cond_d
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 493
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return v0

    .line 255
    :cond_0
    const/4 v2, 0x0

    .line 257
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 264
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 259
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 262
    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 259
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private a(Lavq;Layx;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    const-string v0, "Scheme_V2"

    const-string v3, "zhongwen_pic"

    invoke-virtual {p2, v0, v3}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    :cond_0
    const-string v0, "Scheme_V1"

    const-string v3, "pic"

    invoke-virtual {p2, v0, v3}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v3, "Scheme_V1"

    const-string v4, "layout_horizontal"

    invoke-virtual {p2, v3, v4}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    const-string v3, "Scheme_V1"

    const-string v5, "layout_vertical"

    invoke-virtual {p2, v3, v5}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    const-string v5, "Scheme_V1"

    iput-object v5, p1, Lavq;->a:Ljava/lang/String;

    move-object v9, v0

    move-object v0, v4

    move-object v4, v9

    .line 287
    :goto_0
    if-nez v4, :cond_3

    .line 328
    :cond_1
    :goto_1
    return v2

    .line 280
    :cond_2
    const-string v3, "Scheme_V2"

    const-string v4, "zhongwen_layout_horizontal"

    invoke-virtual {p2, v3, v4}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    const-string v3, "Scheme_V2"

    const-string v5, "zhongwen_layout_vertical"

    invoke-virtual {p2, v3, v5}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    const-string v5, "Scheme_V2"

    iput-object v5, p1, Lavq;->a:Ljava/lang/String;

    move-object v9, v0

    move-object v0, v4

    move-object v4, v9

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lavq;->b:Ljava/lang/String;

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[initCustomThemeKeyboard] pic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lavo;->a(Ljava/lang/String;)V

    .line 291
    if-eqz v0, :cond_1

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v8, :cond_1

    .line 292
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    new-array v5, v8, [I

    iput-object v5, p1, Lavq;->a:[I

    .line 294
    iget-object v5, p1, Lavq;->a:[I

    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    .line 295
    iget-object v5, p1, Lavq;->a:[I

    aget-object v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    .line 296
    iget-object v5, p1, Lavq;->a:[I

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v5, v7

    .line 298
    iget-object v0, p1, Lavq;->a:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lavo;->a:Z

    .line 300
    if-eqz v3, :cond_1

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v8, :cond_1

    .line 301
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    new-array v3, v8, [I

    iput-object v3, p1, Lavq;->b:[I

    .line 303
    iget-object v3, p1, Lavq;->b:[I

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v2

    .line 304
    iget-object v3, p1, Lavq;->b:[I

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    .line 305
    iget-object v3, p1, Lavq;->b:[I

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v7

    .line 307
    iget-object v0, p1, Lavq;->b:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lavo;->b:Z

    .line 309
    const/4 v3, 0x0

    .line 312
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lavo;->a:Lhk;

    iget-object v5, v5, Lhk;->d:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 314
    const-string v3, "/sdcard/sogou/sga/tmp_bg.sgimg"

    .line 315
    if-eqz v0, :cond_5

    .line 316
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p1, Lavq;->a:Landroid/graphics/Bitmap;

    .line 318
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 319
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :cond_5
    :goto_3
    invoke-static {v2}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    move v2, v1

    .line 328
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 298
    goto :goto_2

    .line 322
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 323
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    :goto_5
    invoke-static {v2}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 325
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 322
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const-string v1, "  1.2 ######## tile vvv"

    invoke-static {v1}, Lavo;->a(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v3, v1, v2

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 213
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v2

    int-to-float v6, v6

    invoke-virtual {v4, p1, v5, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 562
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 563
    const/16 v2, 0x4000

    new-array v2, v2, [B

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 566
    iget-object v2, p0, Lavo;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020095

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 567
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 568
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 569
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v2, v1

    .line 570
    :goto_0
    if-ge v2, v5, :cond_2

    move v0, v1

    .line 571
    :goto_1
    if-ge v0, v6, :cond_1

    .line 572
    invoke-virtual {v4, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 573
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 574
    if-eqz v7, :cond_0

    .line 575
    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v7, p1

    .line 576
    invoke-virtual {v4, v2, v0, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 571
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 580
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    :cond_3
    return-object v4
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x43c8

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 611
    if-nez p1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-object v0

    .line 612
    :cond_1
    if-eqz p2, :cond_0

    .line 614
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    sget v2, Lavo;->a:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2, p1}, Lays;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 616
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 617
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v4, v3

    sget v4, Lavo;->a:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4, p2}, Lays;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 618
    invoke-virtual {v2, v3, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 620
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 623
    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/high16 v6, 0x4370

    .line 650
    if-nez p1, :cond_1

    move-object p1, v0

    .line 667
    :cond_0
    :goto_0
    return-object p1

    .line 651
    :cond_1
    if-eqz p2, :cond_0

    .line 653
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 654
    if-eqz v2, :cond_0

    .line 656
    const/16 v1, 0x190

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 657
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 658
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 659
    invoke-virtual {v3, p1, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 661
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v6, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    invoke-static {v4, v5, v2}, Lays;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 663
    const/high16 v4, 0x43c8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 664
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v1

    .line 667
    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x43c8

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 627
    if-nez p1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-object v0

    .line 628
    :cond_1
    if-eqz p2, :cond_0

    .line 630
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 632
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 633
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 634
    int-to-float v3, v3

    mul-float/2addr v3, v6

    int-to-float v1, v1

    div-float v1, v3, v1

    float-to-int v3, v1

    .line 636
    const/16 v1, 0x190

    sget v4, Lavo;->a:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 637
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 638
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 639
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    const/high16 v6, 0x3f80

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6, v2}, Lays;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 640
    invoke-virtual {v4, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 641
    int-to-float v3, v3

    invoke-virtual {v4, p2, v8, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 643
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 646
    goto :goto_0
.end method
