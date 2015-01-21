.class public Lcom/sohu/inputmethod/settings/RegisterActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lalv;


# static fields
.field private static a:I


# instance fields
.field private a:Lamh;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/Spinner;

.field private a:Landroid/widget/Toast;

.field private a:Lawa;

.field private a:Ljava/lang/String;

.field private a:Lsg;

.field private b:I

.field private b:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x29

    sput v0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lafc;

    invoke-direct {v0, p0}, Lafc;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:I

    .line 72
    new-instance v0, Lafd;

    invoke-direct {v0, p0}, Lafd;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/os/Handler;

    .line 392
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x5

    .line 301
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    const/4 v0, 0x4

    goto :goto_0

    .line 313
    :cond_2
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lamh;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lamh;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;Lamh;)Lamh;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lamh;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lsg;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lsg;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 179
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    .line 181
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 182
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    const v1, 0x7f0b0198

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    const v1, 0x7f0b021d

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    invoke-virtual {v0, v2}, Lawa;->setCancelable(Z)V

    .line 185
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    invoke-virtual {v0, v2}, Lawa;->a(Z)V

    .line 186
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lawa;

    const/4 v1, -0x2

    const v2, 0x7f0b02ae

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lafj;

    invoke-direct {v3, p0}, Lafj;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 195
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 425
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 428
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    .line 432
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 323
    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 325
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 326
    if-nez v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 325
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0701ac

    .line 198
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->setContentView(I)V

    .line 199
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 200
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f06

    const v3, 0x1090008

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 202
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    const v0, 0x7f0701ab

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 208
    const/4 v1, 0x0

    new-instance v2, Lafo;

    sget v3, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:I

    invoke-direct {v2, p0, v3}, Lafo;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;I)V

    aput-object v2, v0, v1

    .line 209
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 211
    const v0, 0x7f0701ad

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Landroid/widget/EditText;

    .line 212
    const v0, 0x7f0701ae

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Landroid/widget/EditText;

    .line 213
    const v0, 0x7f0701af

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Landroid/widget/EditText;

    .line 214
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Spinner;

    .line 215
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Spinner;

    iget v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 220
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lafk;

    invoke-direct {v1, p0}, Lafk;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lafl;

    invoke-direct {v1, p0}, Lafl;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 250
    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 251
    const v1, 0x7f0701b0

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 252
    new-instance v2, Lafm;

    invoke-direct {v2, p0}, Lafm;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v0, Lafn;

    invoke-direct {v0, p0}, Lafn;-><init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 345
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_0

    .line 345
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->e:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 378
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 379
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 380
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 381
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->c:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->d:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->b:I

    .line 363
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b()V

    .line 364
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0263

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Landroid/widget/Toast;

    .line 166
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b()V

    .line 167
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "RegisterActivity"

    const-string v1, "[[onUserLeaveHint]]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/RegisterActivity;->a:Lsg;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()V

    .line 176
    :cond_0
    return-void
.end method
