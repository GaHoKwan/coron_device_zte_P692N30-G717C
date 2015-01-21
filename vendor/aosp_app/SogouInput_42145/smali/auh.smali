.class Lauh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Latv;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method constructor <init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lauh;->a:Latv;

    iput-object p2, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b028e

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0282

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b028f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Z)Z

    .line 375
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 379
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lauh;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Z)Z

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
