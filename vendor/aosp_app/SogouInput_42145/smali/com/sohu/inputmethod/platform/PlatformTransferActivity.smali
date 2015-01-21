.class public Lcom/sohu/inputmethod/platform/PlatformTransferActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private final a:Ljava/lang/String;

.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string v0, "PlatformTransferActivity"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Z

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 78
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 81
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    const v2, 0x7f0b04a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 83
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    const v2, 0x7f0b0249

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    const v3, 0x7f0b02ab

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lyz;

    invoke-direct {v4, p0, v0}, Lyz;-><init>(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0b02ae

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lza;

    invoke-direct {v3, p0}, Lza;-><init>(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b032c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 320
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    const-string v1, "transfertype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v1, "packageName"

    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0, p2}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 318
    const v0, 0x7f040012

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences$Editor;

    const v1, 0x7f0b0139

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences;

    const v1, 0x7f0b0139

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 115
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences$Editor;

    const v1, 0x7f0b0138

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences;

    const v1, 0x7f0b0138

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 325
    const-string v1, "select_tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 329
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 302
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 237
    :pswitch_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 240
    :pswitch_4
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 242
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_2

    .line 244
    const-string v1, "CONTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return content is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 259
    :pswitch_6
    const-string v0, "app crash!!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 266
    :pswitch_7
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 269
    :pswitch_8
    packed-switch p2, :pswitch_data_2

    .line 297
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 271
    :pswitch_9
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_4

    .line 273
    const-string v1, "APP_RESULT_CONTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v2, "APP_RESULT_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    const-string v3, "APP_RESULT_APP_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return content is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\npackage name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 280
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto/16 :goto_0

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto/16 :goto_0

    .line 293
    :pswitch_a
    const-string v0, "app crash!!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 269
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences;

    .line 121
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a:Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    const-string v1, "transferType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 125
    packed-switch v1, :pswitch_data_0

    .line 189
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 196
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string v0, "com.sohu.input.multimedia.AUDIO"

    invoke-direct {p0, v0, v4}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 130
    :pswitch_1
    const-string v0, "com.sohu.input.multimedia.IMAGE"

    invoke-direct {p0, v0, v3}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :pswitch_2
    const-string v0, "com.sohu.input.multimedia.PHOTO"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 137
    :pswitch_3
    sput-boolean v4, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sohu.inputmethod.dimensionalbarcode.captureactivity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-class v3, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 142
    const-string v1, "ISQRCODE"

    const-string v3, "ISQRCODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto :goto_0

    .line 144
    :cond_0
    const-string v1, "ISQRCODE"

    const-string v3, "ISQRCODE"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 150
    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(I)V

    goto :goto_0

    .line 153
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(I)V

    goto :goto_0

    .line 156
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(I)V

    goto :goto_0

    .line 159
    :pswitch_7
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->b()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a()V

    goto :goto_0

    .line 166
    :pswitch_8
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v1, :cond_3

    .line 169
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sogouapi.SogouEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    const-string v0, "catch activity not found exception!!!!!!!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto/16 :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto/16 :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 221
    invoke-static {}, Laox;->b()V

    .line 222
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 216
    return-void
.end method
