.class public Lcom/sohu/inputmethod/settings/UserSymbolList;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/List;


# instance fields
.field private final a:D

.field protected final a:I

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/content/Intent;

.field private a:Landroid/view/Menu;

.field private a:Landroid/widget/TableLayout;

.field private a:Landroid/widget/TextView;

.field private a:Laur;

.field protected a:Ljava/lang/String;

.field private a:Z

.field private final b:D

.field protected final b:I

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Z

.field protected final c:I

.field private c:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private c:Z

.field private final d:I

.field private d:Ljava/util/List;

.field private d:Z

.field private final e:I

.field private e:Z

.field private final f:I

.field private f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:I

    .line 48
    iput v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:I

    .line 49
    iput v5, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:I

    .line 51
    const-string v0, "com.sohu.inputmethod.settings.UserSymbolEdit"

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/lang/String;

    .line 56
    const-wide v0, 0x3fe3333333333333L

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:D

    .line 57
    const-wide v0, 0x3fd999999999999aL

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:D

    .line 59
    iput v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:I

    .line 60
    iput v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->e:I

    .line 61
    iput v5, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->f:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->g:I

    .line 64
    iput v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->h:I

    .line 65
    iput v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->i:I

    .line 68
    const/16 v0, 0x18

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->j:I

    .line 70
    const v0, -0xdbdbdc

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->k:I

    .line 71
    const/16 v0, -0x7b00

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->l:I

    .line 73
    iput v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->m:I

    .line 74
    const/16 v0, 0x8

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->n:I

    .line 82
    iput-object v6, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    .line 83
    iput-object v6, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    .line 88
    iput v4, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    .line 95
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->e:Z

    .line 97
    iput v4, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 102
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->f:Z

    .line 177
    new-instance v0, Lahk;

    invoke-direct {v0, p0}, Lahk;-><init>(Lcom/sohu/inputmethod/settings/UserSymbolList;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 196
    new-instance v0, Lahl;

    invoke-direct {v0, p0}, Lahl;-><init>(Lcom/sohu/inputmethod/settings/UserSymbolList;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolList;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Landroid/view/Menu;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/view/Menu;

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const v10, -0x333334

    const/high16 v9, 0x41c0

    const v8, -0xdbdbdc

    const/4 v7, 0x1

    .line 463
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 464
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 465
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 466
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->q:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 468
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 469
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 471
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 472
    invoke-virtual {v1, v7, v11, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 473
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 474
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 475
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 476
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 477
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 478
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 479
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    add-int/lit8 v3, p1, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 481
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->q:I

    int-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 483
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 484
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 486
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 487
    invoke-virtual {v2, v7, v11, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 488
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 489
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 490
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 491
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 492
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 495
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/widget/TableRow;->setId(I)V

    .line 497
    invoke-virtual {v0, v8}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 498
    return-object v0
.end method

.method public static a()Ljava/util/List;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f030070

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 116
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 312
    const-string v3, "key_edited_symbol"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "key_edited_symbol_name"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolList;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->f()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/Intent;

    .line 508
    :goto_0
    if-eqz p3, :cond_0

    .line 509
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 513
    return-void

    .line 506
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    sput-object p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/util/List;

    .line 374
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->e:Z

    return v0
.end method

.method public static b()Ljava/util/List;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/UserSymbolList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 241
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->f:Z

    if-nez v0, :cond_1

    .line 242
    :cond_0
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Z

    .line 247
    :goto_0
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    if-gtz v0, :cond_2

    .line 248
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Z

    .line 249
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Z

    .line 255
    :goto_1
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Z

    .line 256
    return-void

    .line 245
    :cond_1
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Z

    goto :goto_0

    .line 252
    :cond_2
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Z

    .line 253
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Z

    goto :goto_1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/UserSymbolList;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->e()V

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    sput-object p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/util/List;

    .line 378
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 305
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "categoryName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laur;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laur;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    .line 351
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laur;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    .line 352
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    invoke-virtual {v0}, Laur;->a()Ljava/util/List;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSymbolList,symbolist size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    sput-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/util/List;

    .line 361
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    sput-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/util/List;

    .line 362
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "categoryName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    invoke-virtual {v0}, Laur;->a()Ljava/util/List;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    new-instance v1, Laus;

    invoke-direct {v1}, Laus;-><init>()V

    .line 392
    const/4 v2, 0x1

    iput-boolean v2, v1, Laus;->b:Z

    .line 393
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    iput-object v2, v1, Laus;->a:Ljava/util/List;

    .line 394
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    iput-object v2, v1, Laus;->b:Ljava/util/List;

    .line 395
    const-string v2, ""

    iput-object v2, v1, Laus;->a:Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    invoke-virtual {v2}, Laur;->a()Ljava/util/Map;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Laur;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 401
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    sput-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/util/List;

    .line 402
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    sput-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/util/List;

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const v0, 0x7f070212

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    .line 407
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 408
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->g()V

    .line 409
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    if-ltz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    iget v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 432
    :cond_0
    :goto_0
    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const v0, 0x7f070213

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 435
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_1
    return-void

    .line 415
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 416
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    if-gez v0, :cond_3

    .line 417
    iput v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    iget v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 426
    :cond_4
    iput v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 427
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    iget v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 440
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 444
    :cond_0
    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    .line 446
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    .line 447
    :goto_1
    const/16 v0, 0x8

    if-ge v2, v0, :cond_2

    .line 448
    if-lt v2, v3, :cond_1

    .line 449
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v2, v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 451
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    .line 447
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 455
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->o:I

    goto :goto_2

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->requestLayout()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->f:Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 564
    const-string v0, "onActivityResult"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    .line 574
    sget-object v0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->d:Ljava/util/List;

    .line 578
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->e()V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "symbolist size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    const-string v0, "onCreateeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 125
    const v0, 0x1030008

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->setTheme(I)V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/symuser.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->q:I

    .line 132
    new-instance v0, Laur;

    invoke-direct {v0}, Laur;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Laur;

    .line 133
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->requestWindowFeature(I)Z

    .line 134
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a()V

    .line 136
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Ljava/lang/String;

    .line 137
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0b02ae

    const v3, 0x7f0b02ab

    const v1, 0x7f0b019d

    const/4 v2, 0x1

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0231

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0232

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 216
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->b()V

    .line 222
    const v0, 0x7f0b02a7

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 234
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/view/Menu;

    .line 235
    iput-boolean v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->e:Z

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    const v0, 0x7f070211

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 143
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    .line 144
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, -0x7b00

    const v4, -0x333334

    const v2, -0xdbdbdc

    const/high16 v3, -0x100

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    rem-int/lit8 v1, v0, 0x8

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    add-int/lit8 v2, v1, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    .line 525
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    add-int/lit8 v2, v1, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    .line 527
    iput v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 528
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 531
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 541
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->e:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 544
    :cond_1
    return-void

    .line 535
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 536
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 539
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->openOptionsMenu()V

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 301
    :goto_0
    return v0

    .line 275
    :pswitch_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->c()V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->showDialog(I)V

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->showDialog(I)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause+symbollist.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 337
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->e()V

    .line 338
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 343
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->f()V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume,symbolist size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 322
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->d()V

    .line 323
    const-string v0, "onStart"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 329
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 550
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 557
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    iget v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    .line 553
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TableLayout;

    iget v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->p:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->b:Landroid/widget/TextView;

    .line 554
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolList;->a:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
