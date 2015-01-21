.class public final Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Ljava/lang/String;

.field public static a:Z

.field private static b:Z

.field private static c:Z


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

.field private a:Ljava/util/Vector;

.field private a:Ljx;

.field private a:Lke;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const-class v0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljava/lang/String;

    .line 70
    sput-boolean v1, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Z

    .line 72
    sput-boolean v1, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->c:Z

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/Display;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getRotation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 259
    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    .line 261
    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    return-object v0
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->c:Z

    .line 108
    return-void
.end method

.method private b(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xb4

    const/16 v5, 0x5a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_4

    .line 337
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 338
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/Display;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 340
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    .line 341
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 342
    invoke-virtual {p0, p1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 345
    invoke-virtual {p0, p1, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    .line 350
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 351
    invoke-virtual {p0, p1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 354
    const/16 v0, 0x10e

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    .line 358
    :pswitch_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    .line 359
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 360
    invoke-virtual {p0, p1, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 363
    const/16 v0, 0x10e

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    .line 368
    :pswitch_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    .line 369
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 370
    invoke-virtual {p0, p1, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto/16 :goto_0

    .line 372
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 373
    invoke-virtual {p0, p1, v5}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;I)V

    goto/16 :goto_0

    .line 380
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c()V
    .locals 2

    .prologue
    .line 273
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 277
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lju;

    invoke-direct {v1, p0}, Lju;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 286
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Landroid/widget/ImageView;

    .line 287
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 288
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Ljv;

    invoke-direct {v1, p0}, Ljv;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    const v1, 0x7f0b039d

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 398
    const v1, 0x7f0b0396

    new-instance v2, Lkd;

    invoke-direct {v2, p0}, Lkd;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    new-instance v1, Lkd;

    invoke-direct {v1, p0}, Lkd;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 401
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 404
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 405
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 406
    iget-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->d:Z

    if-eqz v1, :cond_0

    .line 407
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b(Landroid/view/SurfaceHolder;)V

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 412
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 420
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljw;

    invoke-direct {v3, p0}, Ljw;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b03a9

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 431
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    return-object v0
.end method

.method public a()Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    return-object v0
.end method

.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    invoke-virtual {v0}, Ljx;->a()V

    .line 388
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    invoke-virtual {v0}, Ljx;->b()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    .line 391
    :cond_0
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    invoke-virtual {v0}, Lkl;->b()V

    .line 393
    :cond_1
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkl;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Ljx;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Ljx;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->e()V

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    .line 307
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->e()V

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceHolder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 318
    :try_start_0
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkl;->a(Landroid/view/SurfaceHolder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Ljx;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Ljx;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->e()V

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 326
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a()V

    .line 436
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->finish()V

    .line 238
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->finish()V

    .line 240
    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->g()V

    .line 243
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->finish()V

    .line 178
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 119
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->setRequestedOrientation(I)V

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Ljava/lang/Boolean;)V

    .line 124
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->requestWindowFeature(I)Z

    .line 126
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 127
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 128
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 130
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->setContentView(I)V

    .line 132
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->c()V

    .line 133
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->d()V

    .line 134
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ISQRCODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b03a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    :goto_1
    new-instance v0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    .line 147
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 151
    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->c:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/RelativeLayout;

    .line 155
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljs;

    invoke-direct {v1, p0}, Ljs;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Ljt;

    invoke-direct {v1, p0}, Ljt;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Ljx;

    .line 175
    iput-boolean v4, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->d:Z

    .line 176
    new-instance v0, Lke;

    invoke-direct {v0, p0}, Lke;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lke;

    .line 177
    iput-object p0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    goto/16 :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lke;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lke;

    invoke-virtual {v0}, Lke;->b()V

    .line 217
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lke;

    .line 219
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 222
    :cond_1
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/app/AlertDialog;

    .line 224
    :cond_2
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 226
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    .line 227
    invoke-static {}, Lkl;->a()V

    .line 228
    invoke-static {}, Laox;->a()V

    .line 229
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a()V

    .line 195
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    invoke-static {p0}, Lkl;->a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    .line 184
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->f()V

    .line 185
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 202
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 209
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->finish()V

    .line 210
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->d:Z

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->d:Z

    .line 248
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b(Landroid/view/SurfaceHolder;)V

    .line 250
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->d:Z

    .line 266
    return-void
.end method
