.class final Lkv;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final a:La;

.field private a:Landroid/content/Intent;

.field private final a:Landroid/os/Handler;

.field private a:Z

.field private final b:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lkv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkv;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILa;IIZLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-object p1, p0, Lkv;->b:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lkv;->a:Landroid/os/Handler;

    .line 59
    iput p3, p0, Lkv;->a:I

    .line 60
    iput-object p4, p0, Lkv;->a:La;

    .line 61
    iput p5, p0, Lkv;->b:I

    .line 62
    iput p6, p0, Lkv;->c:I

    .line 63
    iput-boolean p7, p0, Lkv;->a:Z

    .line 64
    iput-object p8, p0, Lkv;->a:Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 122
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 123
    const-string v0, "UTF-8"

    .line 126
    :goto_1
    return-object v0

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkv;->a:Landroid/content/Intent;

    const-string v2, "ENCODE_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "themeFileName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lkv;->a:Landroid/content/Intent;

    const-string v2, "ENCODE_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lage;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 132
    if-nez v1, :cond_0

    .line 133
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/dimcode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x0

    .line 136
    if-eqz p1, :cond_1

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_0
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 149
    :cond_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 141
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 140
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;La;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-direct {p0, p1}, Lkv;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    new-instance v5, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v5, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 92
    sget-object v1, Lf;->b:Lf;

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    new-instance v0, Lj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj;-><init>(I)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 95
    invoke-virtual/range {v0 .. v5}, Lj;->a(Ljava/lang/String;La;IILjava/util/Hashtable;)Lbe;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lbe;->a()I

    move-result v3

    .line 98
    invoke-virtual {v5}, Lbe;->b()I

    move-result v7

    .line 101
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v4, v6

    .line 103
    :goto_0
    if-ge v4, v7, :cond_3

    .line 104
    mul-int v8, v4, v3

    move v2, v6

    .line 105
    :goto_1
    if-ge v2, v3, :cond_2

    .line 106
    add-int v9, v8, v2

    invoke-virtual {v5, v2, v4}, Lbe;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x100

    :goto_2
    aput v0, v1, v9

    .line 105
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 106
    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    .line 103
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 110
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v2, v6

    move v4, v6

    move v5, v6

    move v6, v3

    .line 112
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 113
    iget-boolean v1, p0, Lkv;->a:Z

    if-eqz v1, :cond_4

    .line 114
    invoke-direct {p0, v0}, Lkv;->a(Landroid/graphics/Bitmap;)V

    .line 116
    :cond_4
    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lkv;->b:Ljava/lang/String;

    iget-object v1, p0, Lkv;->a:La;

    iget v2, p0, Lkv;->a:I

    iget v3, p0, Lkv;->a:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lkv;->a(Ljava/lang/String;La;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lkv;->a:Landroid/os/Handler;

    iget v2, p0, Lkv;->b:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 73
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ls; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    iget-object v0, p0, Lkv;->a:Landroid/os/Handler;

    iget v1, p0, Lkv;->c:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 81
    iget-object v0, p0, Lkv;->a:Landroid/os/Handler;

    iget v1, p0, Lkv;->c:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
