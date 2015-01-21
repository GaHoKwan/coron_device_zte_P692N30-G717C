.class public Lcom/sohu/inputmethod/settings/UserSymbolEdit;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Z


# instance fields
.field private a:I

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/Toast;

.field private a:Ljava/lang/CharSequence;

.field private a:Ljava/util/List;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;

.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 318
    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 320
    const/4 v0, 0x0

    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 329
    :cond_0
    return-object p0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 318
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    new-instance v1, Lahi;

    invoke-direct {v1, p0}, Lahi;-><init>(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    new-instance v1, Lahj;

    invoke-direct {v1, p0}, Lahj;-><init>(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 374
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 377
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    .line 381
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0237

    const/4 v0, 0x0

    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    const v1, 0x7f0b0239

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/CharSequence;)V

    .line 314
    :goto_0
    return v0

    .line 298
    :cond_1
    :try_start_0
    const-string v1, "GBK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    .line 299
    const v1, 0x7f0b0235

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 306
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_4
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 250
    iget v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:I

    packed-switch v0, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->d()V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Ljava/lang/String;)V

    .line 261
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    const-string v1, "getname"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 280
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Ljava/util/List;)V

    .line 281
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->b(Ljava/util/List;)V

    .line 282
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->d()V

    goto/16 :goto_0

    .line 269
    :cond_2
    const-string v1, "original name"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 386
    sget-boolean v0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "UserSymbolEdit"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->d()V

    .line 290
    return-void
.end method

.method private d()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->finish()V

    .line 337
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->finish()V

    .line 240
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b()V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->c()V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x7f07020f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f03006e

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 62
    const v0, 0x7f07020d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f07020e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f07020f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Button;

    .line 86
    const v0, 0x7f070210

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iput v3, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:I

    .line 114
    :goto_0
    invoke-static {}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/util/List;

    .line 115
    invoke-static {}, Lcom/sohu/inputmethod/settings/UserSymbolList;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/util/List;

    .line 116
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a()V

    .line 117
    :goto_1
    return-void

    .line 97
    :cond_0
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_edited_symbol"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_edited_symbol_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/lang/CharSequence;

    .line 101
    if-nez p1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:I

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    const-string v1, "edittext"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    const-string v1, "nametext"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->finish()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->d()V

    .line 224
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    const-string v0, "edittext"

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "nametext"

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method
