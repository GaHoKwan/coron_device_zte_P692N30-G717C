.class public Lcom/sohu/inputmethod/settings/LoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:Laly;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/EditText;

.field private a:Lawa;

.field private a:Ljava/lang/String;

.field private a:Lsg;

.field private b:Landroid/widget/EditText;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Laem;

    invoke-direct {v0, p0}, Laem;-><init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    new-instance v0, Laen;

    invoke-direct {v0, p0}, Laen;-><init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Laly;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Laly;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lsg;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    .line 157
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    const v1, 0x7f0b0199

    invoke-virtual {v0, v1}, Lawa;->setTitle(I)V

    .line 158
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 159
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    const v1, 0x7f0b021d

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawa;->setCancelable(Z)V

    .line 161
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lawa;

    const/4 v1, -0x2

    const v2, 0x7f0b02ae

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laes;

    invoke-direct {v3, p0}, Laes;-><init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 247
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 229
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

    if-eqz v1, :cond_2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0261

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 243
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/LoginActivity;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0262

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 239
    :cond_4
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 240
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0263

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 172
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->setContentView(I)V

    .line 174
    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/widget/EditText;

    .line 175
    const v0, 0x7f0700f2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Landroid/widget/EditText;

    .line 176
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 180
    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 181
    const v1, 0x7f0700f4

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 182
    const v2, 0x7f0700f5

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 184
    new-instance v3, Laet;

    invoke-direct {v3, p0}, Laet;-><init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v0, Laeu;

    invoke-direct {v0, p0}, Laeu;-><init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v0, Laev;

    invoke-direct {v0, p0}, Laev;-><init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 263
    const-string v1, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0264

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v0, Laly;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p0}, Laly;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Laly;

    .line 213
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Laly;

    invoke-virtual {v0, p0}, Laly;->b(Lalv;)V

    .line 214
    const/16 v0, 0x65

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Laly;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lsg;

    .line 215
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Laly;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lsg;

    invoke-virtual {v0, v1}, Laly;->c(Lsg;)V

    .line 216
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 217
    if-lez v0, :cond_0

    .line 218
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    .line 219
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 317
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 318
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 319
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[onActivityResult]] resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/settings/LoginActivity;->setResult(I)V

    .line 284
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->finish()V

    .line 285
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->b:Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->b()V

    .line 277
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->b()V

    .line 152
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "LoginActivity"

    const-string v1, "[[onUserLeaveHint]]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LoginActivity;->a:Lsg;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()V

    .line 294
    :cond_0
    return-void
.end method
