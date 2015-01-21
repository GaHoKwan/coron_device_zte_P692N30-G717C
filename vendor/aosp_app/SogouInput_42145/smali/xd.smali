.class Lxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lxd;->a:Lxb;

    iput-object p2, p0, Lxd;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lxd;->a:Lxb;

    iget-object v1, v1, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const v1, 0x7f0b0417

    .line 282
    iget-object v2, p0, Lxd;->a:Lxb;

    iget-object v2, v2, Lxb;->a:Lwy;

    invoke-static {v2}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0419

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lxd;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v5, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 284
    const v3, 0x7f020099

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 287
    const v1, 0x7f0b02ab

    new-instance v2, Lxe;

    invoke-direct {v2, p0}, Lxe;-><init>(Lxd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    const v1, 0x7f0b02ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 298
    iget-object v1, p0, Lxd;->a:Lxb;

    iget-object v1, v1, Lxb;->a:Lwy;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lwy;->a(Lwy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 299
    iget-object v0, p0, Lxd;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lxd;->a:Lxb;

    iget-object v2, v2, Lxb;->a:Lwy;

    invoke-static {v2}, Lwy;->a(Lwy;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 302
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 304
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 307
    iget-object v0, p0, Lxd;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 308
    return-void
.end method
