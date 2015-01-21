.class final Lkb;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private final a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

.field private final a:Li;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lkb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkb;->a:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lkb;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    iput-object v0, p0, Lkb;->a:Li;

    .line 50
    iget-object v0, p0, Lkb;->a:Li;

    invoke-virtual {v0, p2}, Li;->a(Ljava/util/Hashtable;)V

    .line 51
    iput-object p1, p0, Lkb;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    .line 52
    return-void
.end method

.method private static a(Ln;)Lah;
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-static {p0}, Lal;->a(Ln;)Lah;

    move-result-object v0

    return-object v0
.end method

.method private a([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f070007

    .line 92
    .line 94
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Lkb;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 96
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lkb;->a([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2, p3, p2}, Lkl;->b([BII)Lkh;

    move-result-object v1

    .line 102
    :goto_0
    if-nez v1, :cond_1

    .line 103
    iget-object v0, p0, Lkb;->a:Li;

    invoke-virtual {v0}, Li;->a()V

    .line 104
    iget-object v0, p0, Lkb;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    :goto_1
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lkl;->a([BII)Lkh;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v2, Lc;

    new-instance v3, Lbp;

    invoke-direct {v3, v1}, Lbp;-><init>(Lh;)V

    invoke-direct {v2, v3}, Lc;-><init>(Lb;)V

    .line 112
    :try_start_0
    iget-object v3, p0, Lkb;->a:Li;

    invoke-virtual {v3, v2}, Li;->a(Lc;)Ln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lm; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    iget-object v2, p0, Lkb;->a:Li;

    :goto_2
    invoke-virtual {v2}, Li;->a()V

    .line 134
    if-eqz v0, :cond_3

    .line 136
    invoke-static {v0}, Lkb;->a(Ln;)Lah;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lah;->a()Lai;

    move-result-object v2

    .line 138
    sget-object v3, Lai;->k:Lai;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ln;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ln;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln;->a(Ljava/lang/String;)V

    .line 143
    :cond_2
    iget-object v2, p0, Lkb;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x7f070008

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 146
    const-string v3, "barcode_bitmap"

    invoke-virtual {v1}, Lkh;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkb;->a:Li;

    invoke-virtual {v1}, Li;->a()V

    throw v0

    .line 151
    :cond_3
    iget-object v0, p0, Lkb;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 113
    :catch_0
    move-exception v2

    .line 115
    iget-object v2, p0, Lkb;->a:Li;

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a([BII)[B
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    array-length v0, p1

    new-array v3, v0, [B

    move v2, v1

    .line 68
    :goto_0
    if-ge v2, p3, :cond_2

    move v0, v1

    .line 69
    :goto_1
    if-ge v0, p2, :cond_1

    .line 70
    mul-int v4, v0, p3

    add-int/2addr v4, p3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_0

    mul-int v4, v0, p3

    add-int/2addr v4, p3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    array-length v5, v3

    if-ge v4, v5, :cond_0

    mul-int v4, v2, p2

    add-int/2addr v4, v0

    if-lez v4, :cond_0

    mul-int v4, v2, p2

    add-int/2addr v4, v0

    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 72
    mul-int v4, v0, p3

    add-int/2addr v4, p3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, p2

    add-int/2addr v5, v0

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 74
    :cond_2
    return-object v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lkb;->a([BII)V

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x7f070006
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
