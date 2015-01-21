.class public final Llf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private a:Lamr;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/Intent;

.field private a:Landroid/graphics/Bitmap;

.field public a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field public a:Landroid/view/View;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lawa;

.field public a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private a:Ljava/lang/String;

.field private a:Llq;

.field private a:Ln;

.field private a:Lsg;

.field private a:[Llc;

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/content/Intent;

.field private b:Lawa;

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/app/AlertDialog;

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/app/AlertDialog;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Llf;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "   ThemeDimcodeResult"

    iput-object v0, p0, Llf;->a:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Llf;->b:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Llf;->d:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Llc;

    iput-object v0, p0, Llf;->a:[Llc;

    .line 115
    new-instance v0, Llg;

    invoke-direct {v0, p0}, Llg;-><init>(Llf;)V

    iput-object v0, p0, Llf;->a:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Lli;

    invoke-direct {v0, p0}, Lli;-><init>(Llf;)V

    iput-object v0, p0, Llf;->a:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 110
    iput-object p2, p0, Llf;->b:Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llf;->a:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Llf;->a:Landroid/view/LayoutInflater;

    .line 113
    return-void
.end method

.method static synthetic a(Llf;)Lamr;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Llf;->a:Lamr;

    return-object v0
.end method

.method static synthetic a(Llf;Lamr;)Lamr;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Llf;->a:Lamr;

    return-object p1
.end method

.method static synthetic a(Llf;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Llf;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Llf;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(III)Landroid/os/Message;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 688
    if-nez v0, :cond_0

    .line 689
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 690
    iput p1, v0, Landroid/os/Message;->what:I

    .line 691
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 692
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 694
    :cond_0
    return-object v0
.end method

.method static synthetic a(Llf;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Llf;->a:Lawa;

    return-object v0
.end method

.method static synthetic a(Llf;Lawa;)Lawa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Llf;->a:Lawa;

    return-object p1
.end method

.method static synthetic a(Llf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Llf;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Llf;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Llf;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Llf;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Llf;->a:Lsg;

    return-object p1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b03e7

    const/4 v4, 0x0

    .line 449
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const-class v2, Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Llf;->a:Landroid/content/Intent;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/sogou/sga/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============themePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llf;->f(Ljava/lang/String;)V

    .line 454
    :try_start_0
    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ".ssf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 464
    invoke-direct {p0, v0}, Llf;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Llf;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llf;->c(Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    iget-object v0, p0, Llf;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llf;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v2, Lage;->c:Ljava/lang/String;

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v2, Lage;->d:Ljava/lang/String;

    sget-object v3, Laox;->aB:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v2, Lage;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ssf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lage;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v1, Lage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v1, Lage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v1, Lage;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Llf;->a:Landroid/content/Intent;

    sget-object v1, Lage;->l:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const-string v0, "     ========== send broad cast intent to start services"

    invoke-static {v0}, Llf;->f(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llf;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic a(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Llf;->d()V

    return-void
.end method

.method static synthetic a(Llf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Llf;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Llf;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Llf;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ln;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llf;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2, v1}, Lle;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ln;Ljava/lang/String;Landroid/os/Handler;)Lld;

    move-result-object v0

    check-cast v0, Llq;

    iput-object v0, p0, Llf;->a:Llq;

    .line 218
    iget-object v0, p0, Llf;->a:Llq;

    invoke-virtual {v0}, Llq;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    iget-object v1, p0, Llf;->a:Llq;

    invoke-virtual {v1}, Llq;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llf;->d:Ljava/lang/String;

    .line 220
    sget-object v1, Laox;->ar:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Llf;->a:Landroid/graphics/Bitmap;

    .line 221
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Llf;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    iget-object v2, p0, Llf;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 223
    iget-object v1, p0, Llf;->a:Landroid/widget/ImageView;

    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 227
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Llf;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Llf;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Llf;->a:Llq;

    invoke-direct {v1, v2, v3}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v3

    .line 233
    iget-object v0, p0, Llf;->a:Landroid/widget/Button;

    iget-object v1, p0, Llf;->a:[Llc;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void

    .line 225
    :cond_0
    iget-object v2, p0, Llf;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 491
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ssf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 497
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sogou/sga/tmp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 502
    :cond_1
    iget-object v0, p0, Llf;->a:Landroid/content/Context;

    invoke-static {v0}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ssf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 509
    return v0
.end method

.method static synthetic a(Llf;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Llf;->b:Z

    return v0
.end method

.method static synthetic b(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Llf;->e()V

    return-void
.end method

.method static synthetic b(Llf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Llf;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Llf;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Llf;->c:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Llf;->a:Landroid/view/View;

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llf;->a:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Llf;->a:Landroid/view/View;

    const v1, 0x7f070176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llf;->a:Landroid/widget/ImageView;

    .line 205
    iget-object v0, p0, Llf;->a:Landroid/view/View;

    const v1, 0x7f070178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llf;->a:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Llf;->a:Landroid/view/View;

    const v1, 0x7f070177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llf;->a:Landroid/widget/LinearLayout;

    .line 208
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Llf;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    .line 545
    :cond_0
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 546
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lll;

    invoke-direct {v3, p0, p1}, Lll;-><init>(Llf;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 560
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 562
    return-void
.end method

.method static synthetic c(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Llf;->g()V

    return-void
.end method

.method static synthetic c(Llf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Llf;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Llf;->a:Lawa;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Lawa;

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-direct {v0, v1}, Lawa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llf;->a:Lawa;

    .line 515
    :cond_0
    iget-object v0, p0, Llf;->a:Lawa;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Llf;->a:Lawa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawa;->g(I)V

    .line 517
    iget-object v0, p0, Llf;->a:Lawa;

    iget-object v1, p0, Llf;->a:Landroid/content/Context;

    const v2, 0x7f0b0328

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Llf;->a:Lawa;

    iget-object v1, p0, Llf;->a:Landroid/content/Context;

    const v2, 0x7f0b03e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Llf;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 522
    iget-object v0, p0, Llf;->a:Lawa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawa;->setCancelable(Z)V

    .line 523
    iget-object v0, p0, Llf;->a:Lawa;

    const/4 v1, -0x2

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llk;

    invoke-direct {v3, p0}, Llk;-><init>(Llf;)V

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 539
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    .line 568
    :cond_0
    iget-object v0, p0, Llf;->a:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 570
    :cond_1
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 571
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b03b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llm;

    invoke-direct {v3, p0}, Llm;-><init>(Llf;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 585
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lln;

    invoke-direct {v3, p0}, Lln;-><init>(Llf;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 593
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 595
    return-void
.end method

.method static synthetic d(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Llf;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 625
    sget-object v0, Laox;->ar:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llf;->a:Landroid/graphics/Bitmap;

    .line 626
    iget-object v0, p0, Llf;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Llf;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    .line 601
    :cond_0
    iget-object v0, p0, Llf;->a:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 603
    :cond_1
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 604
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b02e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llo;

    invoke-direct {v3, p0}, Llo;-><init>(Llf;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 612
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llp;

    invoke-direct {v3, p0}, Llp;-><init>(Llf;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 620
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 622
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 630
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 642
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 638
    :cond_1
    new-instance v0, Lamr;

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Llf;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Llf;->a:Lamr;

    .line 640
    iget-object v0, p0, Llf;->a:Lamr;

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lamr;->a(Lamv;)V

    .line 641
    iget-object v0, p0, Llf;->a:Lamr;

    invoke-virtual {v0}, Lamr;->a()V

    goto :goto_0
.end method

.method private static final f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 743
    sget-boolean v0, Llf;->a:Z

    if-eqz v0, :cond_0

    .line 744
    const-string v0, ""

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    return-void
.end method

.method private g()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Z)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Llf;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 164
    iput-object v3, p0, Llf;->a:Landroid/view/View;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==================isPortrait==========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llf;->f(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Llf;->a:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_2

    const v0, 0x7f030048

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llf;->a:Landroid/view/View;

    .line 168
    invoke-direct {p0}, Llf;->c()V

    .line 169
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 172
    :cond_0
    iget-object v0, p0, Llf;->b:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Llf;->b:Landroid/content/Intent;

    const-string v1, "START_SOGOU_RESULTACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Llf;->b:Landroid/content/Intent;

    const-string v1, "SOGOU_DIMCODE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-array v1, v2, [Lp;

    .line 176
    new-array v2, v2, [B

    .line 177
    new-instance v3, Ln;

    sget-object v4, La;->a:La;

    invoke-direct {v3, v0, v2, v1, v4}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    iput-object v3, p0, Llf;->a:Ln;

    .line 179
    const-string v0, "THEME_TYPE"

    iput-object v0, p0, Llf;->b:Ljava/lang/String;

    .line 189
    :goto_1
    iget-object v0, p0, Llf;->a:Ln;

    iget-object v1, p0, Llf;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Llf;->a(Ln;Ljava/lang/String;)V

    .line 192
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    const-string v1, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v2, p0, Llf;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Llf;->a:Landroid/view/View;

    return-object v0

    .line 167
    :cond_2
    const v0, 0x7f030049

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Llf;->b:Landroid/content/Intent;

    const-string v1, "SCAN_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    .line 182
    new-instance v0, Ln;

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()[Lp;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()La;

    move-result-object v4

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;J)V

    iput-object v0, p0, Llf;->a:Ln;

    .line 187
    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llf;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Llf;->a:Llq;

    invoke-virtual {v0}, Llq;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Llf;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llf;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 705
    :cond_0
    iput-object v2, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 706
    iput-object v2, p0, Llf;->a:Landroid/content/BroadcastReceiver;

    .line 707
    iget-object v0, p0, Llf;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Llf;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 709
    :cond_1
    invoke-virtual {p0}, Llf;->b()V

    .line 710
    iput-object v2, p0, Llf;->a:Landroid/os/Handler;

    .line 711
    return-void
.end method

.method public a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    :pswitch_0
    return-void

    .line 402
    :pswitch_1
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-direct {p0, v1, p2, p3}, Llf;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 412
    :pswitch_4
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-direct {p0, v1, p2, v2}, Llf;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 415
    :pswitch_5
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-direct {p0, v1, p2, p3}, Llf;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 419
    :pswitch_6
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-direct {p0, v1, p2, v2}, Llf;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 422
    :pswitch_7
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 428
    :pswitch_8
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 431
    :pswitch_9
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 434
    :pswitch_a
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 437
    :pswitch_b
    iget-boolean v0, p0, Llf;->b:Z

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Llf;->a:Landroid/content/Context;

    const v1, 0x7f0b03e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llf;->b(Ljava/lang/String;)V

    .line 440
    :cond_0
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 443
    :pswitch_c
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 294
    :sswitch_0
    iput-object p2, p0, Llf;->c:Ljava/lang/String;

    .line 295
    iput-boolean p3, p0, Llf;->c:Z

    goto :goto_0

    .line 298
    :sswitch_1
    iput-object p2, p0, Llf;->a:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Llf;->a:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6f -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Llf;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 247
    :cond_0
    iget-object v0, p0, Llf;->b:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 249
    :cond_1
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    .line 252
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 255
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Llf;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llh;

    invoke-direct {v3, p0}, Llh;-><init>(Llf;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 265
    :cond_2
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 268
    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-boolean p1, p0, Llf;->b:Z

    .line 740
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Llf;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 717
    :cond_0
    iget-object v0, p0, Llf;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Llf;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 720
    :cond_1
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Llf;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 723
    :cond_2
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Llf;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 726
    :cond_3
    iget-object v0, p0, Llf;->b:Lawa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 729
    :cond_4
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 730
    iget-object v0, p0, Llf;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 732
    :cond_5
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 733
    iget-object v0, p0, Llf;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 736
    :cond_6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Llf;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Llf;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 273
    :cond_0
    iget-object v0, p0, Llf;->b:Lawa;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lawa;

    iget-object v1, p0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-direct {v0, v1}, Lawa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llf;->b:Lawa;

    .line 275
    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0, v2}, Lawa;->g(I)V

    .line 276
    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0, v2}, Lawa;->setCancelable(Z)V

    .line 278
    :cond_1
    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0, p1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Llf;->b:Lawa;

    invoke-virtual {v0}, Lawa;->show()V

    .line 281
    return-void
.end method
