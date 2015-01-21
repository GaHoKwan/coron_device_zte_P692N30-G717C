.class public Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lamv;


# static fields
.field private static final a:Ljava/lang/String;

.field public static a:Z

.field private static b:Z


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lku;

.field private a:Lky;

.field private a:Llf;

.field private a:Lls;

.field private a:Lmd;

.field private b:Landroid/widget/Button;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    .line 87
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    .line 89
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/RelativeLayout;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Handler;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 508
    new-instance v0, Lrr;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    sget-object v2, Laox;->aq:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    sget-object v1, Laox;->ar:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 510
    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Llf;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Lls;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 257
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/ImageView;

    .line 258
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lkz;

    invoke-direct {v1, p0}, Lkz;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    const/high16 v4, 0x4416

    .line 168
    iget-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_0
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 177
    const/16 v1, 0x96

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    const/high16 v2, 0x43fa

    iget-object v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v3}, Laox;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-le v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    const/16 v1, 0x1e

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lku;
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    iget-object v0, v0, Lku;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    iget-object v0, v0, Lku;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    .line 502
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    invoke-virtual {v0, p1, p2, p3}, Llf;->a(III)V

    .line 369
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    invoke-virtual {v0, p1, p2, p3}, Llf;->a(ILjava/lang/String;Z)V

    .line 374
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 361
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->setResult(I)V

    .line 362
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->finish()V

    .line 363
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/16 v5, 0xcd

    const v6, 0x7f0b03ca

    .line 378
    const-string v0, "http://10.1.60.32/web/index.php?"

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->F()Ljava/lang/String;

    move-result-object v0

    .line 381
    sget-object v2, Laox;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 384
    const/16 v2, 0xd1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 385
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 386
    new-instance v3, Lku;

    invoke-direct {v3}, Lku;-><init>()V

    .line 387
    const-string v4, "APK_DETAIL"

    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v4, "APK_NAME"

    const-string v5, "null"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v4, "APK_TYPE"

    const-string v5, "null"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v4, "APK_PACKAGENAME"

    const-string v5, "null"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v4, "APK_LEVEL"

    const/high16 v5, -0x4080

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 392
    const-string v4, "APK_VERSIONCODE"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v1, "APK_ICONURL"

    const-string v4, "null"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 395
    iput-object p1, v3, Lku;->e:Ljava/lang/String;

    .line 396
    iput-object v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    .line 397
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    iput v7, v1, Lku;->b:I

    .line 398
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1}, Lls;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 401
    iput v5, v0, Landroid/os/Message;->what:I

    .line 402
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 403
    const-string v2, "URL_DETAIL"

    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, "ISSAFTY"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 406
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1}, Lls;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Lrr;

    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    sget-object v3, Laox;->aq:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Lrr;->j(Ljava/lang/String;)I

    move-result v2

    .line 412
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_f

    .line 413
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Ljava/lang/String;

    .line 417
    const-string v2, "null"

    .line 418
    invoke-virtual {v0}, Lrr;->a()Lrw;

    move-result-object v3

    .line 419
    if-eqz v3, :cond_9

    .line 420
    iget-object v0, v3, Lrw;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 421
    iget-object v0, v3, Lrw;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1}, Lls;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;Landroid/os/Handler;)I

    move-result v0

    .line 425
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 426
    const/16 v4, 0x18

    if-ne v0, v4, :cond_7

    .line 427
    const/16 v0, 0xcc

    iput v0, v1, Landroid/os/Message;->what:I

    .line 430
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 431
    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_6

    .line 435
    :cond_3
    iget-object v4, v3, Lrw;->a:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lrw;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v3, Lrw;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lrw;->a:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, v3, Lrw;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v3, Lrw;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v8, :cond_8

    .line 439
    :cond_5
    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lrw;->d:Ljava/lang/String;

    .line 444
    :cond_6
    :goto_3
    const-string v2, "URL_DETAIL"

    iget-object v4, v3, Lrw;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v2, "ISSAFTY"

    iget-object v3, v3, Lrw;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 447
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v0}, Lls;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 429
    :cond_7
    iput v5, v1, Landroid/os/Message;->what:I

    goto :goto_2

    .line 441
    :cond_8
    iget-object v2, v3, Lrw;->a:Ljava/lang/String;

    iput-object v2, v3, Lrw;->d:Ljava/lang/String;

    goto :goto_3

    .line 451
    :cond_9
    invoke-virtual {v0}, Lrr;->a()Lku;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_e

    .line 453
    iget-object v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    invoke-static {v3}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v3

    iget v4, v3, Lamo;->cw:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lamo;->cw:I

    .line 454
    iget-object v3, v0, Lku;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 455
    iget-object v1, v0, Lku;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v3}, Lls;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;Landroid/os/Handler;)I

    move-result v1

    .line 457
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 458
    const/16 v4, 0x18

    if-ne v1, v4, :cond_d

    .line 459
    const/16 v1, 0xd0

    iput v1, v3, Landroid/os/Message;->what:I

    .line 462
    :goto_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    iget-object v4, v0, Lku;->f:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, v0, Lku;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lku;->f:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lku;->f:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 466
    :cond_b
    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lku;->f:Ljava/lang/String;

    .line 467
    :cond_c
    const-string v2, "APK_DETAIL"

    iget-object v4, v0, Lku;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v2, "APK_NAME"

    iget-object v4, v0, Lku;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v2, "APK_TYPE"

    iget-object v4, v0, Lku;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v2, "APK_PACKAGENAME"

    iget-object v4, v0, Lku;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "APK_LEVEL"

    iget v4, v0, Lku;->a:F

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 472
    const-string v2, "APK_VERSIONCODE"

    iget v4, v0, Lku;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v2, "APK_ICONURL"

    iget-object v4, v0, Lku;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 475
    iput-object p1, v0, Lku;->e:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    .line 477
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    iput v7, v0, Lku;->b:I

    .line 478
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v0}, Lls;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 461
    :cond_d
    const/16 v1, 0xd1

    iput v1, v3, Landroid/os/Message;->what:I

    goto :goto_4

    .line 482
    :cond_e
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v0}, Lls;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 483
    :cond_f
    const/16 v0, 0x25

    if-ne v2, v0, :cond_10

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 485
    iput v5, v0, Landroid/os/Message;->what:I

    .line 486
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 487
    const-string v2, "URL_DETAIL"

    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v2, "ISSAFTY"

    const-string v3, "null"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 490
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1}, Lls;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 492
    :cond_10
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v0}, Lls;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 207
    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/RelativeLayout;

    .line 208
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->setContentView(Landroid/view/View;)V

    .line 209
    const v0, 0x7f070173

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    .line 210
    const v0, 0x7f070174

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    .line 211
    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Landroid/widget/Button;

    .line 212
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a()V

    .line 213
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    .line 214
    iput-boolean v4, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    .line 218
    :goto_0
    const-string v0, "THEME_TYPE"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "START_SOGOU_RESULTACTIVITY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1}, Llf;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    :goto_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    :cond_2
    return-void

    .line 216
    :cond_3
    iput-boolean v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    goto :goto_0

    .line 226
    :cond_4
    const-string v0, "WEIXIN"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1}, Lmd;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    invoke-virtual {v1, v3}, Lmd;->a(I)Llc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 235
    :cond_7
    const-string v0, "URL_TYPE"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1}, Lls;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1, v3}, Lls;->a(I)Llc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lky;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Lky;->a(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lky;

    invoke-virtual {v1}, Lky;->a()Llc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "START_SOGOU_RESULTACTIVITY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->finish()V

    .line 165
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->finish()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_5

    .line 112
    iput-boolean v4, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "decode_pic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Z

    .line 119
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    const v1, 0x7f030047

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->setContentView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/content/Context;

    .line 123
    const v0, 0x7f070173

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    .line 124
    const v0, 0x7f070174

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    .line 125
    const-string v0, "THEME_TYPE"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "START_SOGOU_RESULTACTIVITY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    :cond_2
    const-string v0, "THEME_TYPE"

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->ar:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 130
    :cond_3
    new-instance v0, Llf;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llf;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    .line 131
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1}, Llf;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iput-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Ljava/lang/String;

    .line 159
    :goto_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a()V

    .line 160
    iget-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Z

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 163
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 164
    sget-object v0, Laox;->as:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Layw;->a(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 114
    :cond_5
    iput-boolean v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    goto/16 :goto_1

    .line 136
    :cond_6
    const-string v0, "WEIXIN"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    new-instance v0, Lmd;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmd;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1}, Lmd;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    invoke-virtual {v1, v3}, Lmd;->a(I)Llc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 142
    :cond_7
    const-string v0, "URL_TYPE"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->ar:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    :cond_8
    new-instance v0, Lls;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lls;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    .line 147
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1}, Lls;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1, v3}, Lls;->a(I)Llc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Ljava/lang/String;

    goto/16 :goto_2

    .line 153
    :cond_9
    new-instance v0, Lky;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lky;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lky;

    .line 154
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lky;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Lky;->a(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lky;

    invoke-virtual {v1}, Lky;->a()Llc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    invoke-virtual {v0}, Llf;->a()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v0}, Lls;->a()V

    .line 274
    :cond_1
    const v0, 0x7f070171

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 276
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/view/View;

    .line 277
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    .line 278
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lky;

    .line 279
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lmd;

    .line 280
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/ImageView;

    .line 281
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Landroid/widget/Button;

    .line 282
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Landroid/widget/Button;

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    invoke-static {}, Laox;->a()V

    .line 285
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lku;

    .line 286
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x4

    .line 291
    if-ne p1, v0, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->setResult(I)V

    .line 293
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->finish()V

    .line 295
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 302
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 308
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llf;->a(Z)V

    .line 311
    :cond_0
    const-string v0, "THEME_TYPE"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "URL_TYPE"

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 312
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lla;

    invoke-direct {v1, p0}, Lla;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 339
    :cond_3
    :goto_0
    return-void

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v0}, Lls;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 332
    const/16 v1, 0xda

    iput v1, v0, Landroid/os/Message;->what:I

    .line 333
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v2, "downloadurl"

    iget-object v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v3}, Lls;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 336
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Lls;

    invoke-virtual {v1}, Lls;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 354
    sget-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->finish()V

    .line 357
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Llf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llf;->a(Z)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()V

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 349
    return-void
.end method
