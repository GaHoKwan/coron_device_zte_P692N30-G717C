.class public Lcom/autonavi/xmgd/navigator/FavoriteEdit;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/autonavi/xmgd/e/c;

.field private f:Lcom/autonavi/xmgd/view/GDTitle;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->g:Z

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->l()Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/c;->a()Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->f:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->f:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->a:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/z;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/z;-><init>(Lcom/autonavi/xmgd/navigator/FavoriteEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    iget-object v1, v0, Lcom/autonavi/xmgd/e/c;->szName:Ljava/lang/String;

    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Lcom/autonavi/xmgd/navigator/aa;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/aa;-><init>(Lcom/autonavi/xmgd/navigator/FavoriteEdit;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    iget-object v1, v0, Lcom/autonavi/xmgd/e/c;->szTel:Ljava/lang/String;

    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->d:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/c;->szAddr:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/FavoriteEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    iput-object v0, v1, Lcom/autonavi/xmgd/e/c;->szName:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    iput-object v0, v1, Lcom/autonavi/xmgd/e/c;->szTel:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    iput-object v0, v1, Lcom/autonavi/xmgd/e/c;->szAddr:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/controls/ab;->l()Lcom/autonavi/xmgd/e/c;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->k()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "poi"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->a()[Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->b()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    aput-object v4, v2, v3

    const-string v2, "poi"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->e:Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/e/c;->a()Lcom/autonavi/xmgd/e/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/c;)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->a()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->g:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->g:Z

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/FavoriteEdit;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
