.class Leu/chainfire/supersu/MainActivity$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity$4;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$4;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4$1;->鷭:Leu/chainfire/supersu/MainActivity$4;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$4$1;)Leu/chainfire/supersu/MainActivity$4;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->鷭:Leu/chainfire/supersu/MainActivity$4;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 0
    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->鷭:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Z)V

    .line 231
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->鷭:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->鷭(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/Installer;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->鷭:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object p2

    new-instance v4, Leu/chainfire/supersu/MainActivity$4$1$1;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/MainActivity$4$1$1;-><init>(Leu/chainfire/supersu/MainActivity$4$1;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v0, Leu/chainfire/supersu/Installer$2;

    invoke-direct {v0, p1, p2, v3, v4}, Leu/chainfire/supersu/Installer$2;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$2;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 237
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1;->鷭:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    new-instance v1, Leu/chainfire/supersu/MainActivity$4$1$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$4$1$2;-><init>(Leu/chainfire/supersu/MainActivity$4$1;)V

    const v2, 0x7f0900c6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    new-instance v1, Leu/chainfire/supersu/MainActivity$4$1$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$4$1$3;-><init>(Leu/chainfire/supersu/MainActivity$4$1;)V

    const v2, 0x7f0900c7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 258
    new-instance v1, Leu/chainfire/supersu/MainActivity$4$1$4;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$4$1$4;-><init>(Leu/chainfire/supersu/MainActivity$4$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 266
    return-void
.end method
