.class Lxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lxj;


# direct methods
.method constructor <init>(Lxj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lxl;->a:Lxj;

    iput p2, p0, Lxl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b0418

    .line 231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    iget v0, p0, Lxl;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lxl;->a:Lxj;

    iget-object v2, v2, Lxj;->a:Lxg;

    invoke-static {v2}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v2

    iget-object v0, p0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lxl;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    .line 236
    const v2, 0x7f0b0416

    .line 239
    iget-object v3, p0, Lxl;->a:Lxj;

    iget-object v3, v3, Lxj;->a:Lxg;

    invoke-static {v3}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 240
    iget-object v4, p0, Lxl;->a:Lxj;

    iget-object v4, v4, Lxj;->a:Lxg;

    invoke-static {v4}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    const v4, 0x7f020099

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 244
    const v2, 0x7f0b02ab

    new-instance v3, Lxm;

    invoke-direct {v3, p0, v0}, Lxm;-><init>(Lxl;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const v0, 0x7f0b02ae

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 290
    iget-object v0, p0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lxg;->a(Lxg;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 291
    iget-object v0, p0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lxl;->a:Lxj;

    iget-object v2, v2, Lxj;->a:Lxg;

    invoke-static {v2}, Lxg;->a(Lxg;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 294
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 296
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 299
    iget-object v0, p0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
