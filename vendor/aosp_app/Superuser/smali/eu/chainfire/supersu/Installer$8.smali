.class Leu/chainfire/supersu/Installer$8;
.super Leu/chainfire/supersu/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/chainfire/supersu/AsyncTask<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    }
.end annotation


# instance fields
.field private ą:Landroid/app/ProgressDialog;

.field private final synthetic Ć:Landroid/content/Context;

.field private final synthetic ć:Ljava/lang/Runnable;

.field final synthetic 鷭:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Leu/chainfire/supersu/MainActivity$6$1$1;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$8;->鷭:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/supersu/Installer$8;->ć:Ljava/lang/Runnable;

    .line 1318
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    move-object p1, p0

    invoke-static {}, Leu/chainfire/supersu/Installer;->鷭()V

    iget-object v0, p1, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->櫯(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    .line 1325
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1326
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1327
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1329
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    return-void

    .line 1331
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1333
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 5

    .line 0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    move-object p1, p0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/Installer$8;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p1, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-nez v4, :cond_0

    const v1, 0x7f0900e9

    goto :goto_0

    :cond_0
    const v1, 0x7f0900ea

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$8$1;

    iget-object v2, p1, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    iget-object v3, p1, Leu/chainfire/supersu/Installer$8;->ć:Ljava/lang/Runnable;

    invoke-direct {v1, p1, v4, v2, v3}, Leu/chainfire/supersu/Installer$8$1;-><init>(Leu/chainfire/supersu/Installer$8;ILandroid/content/Context;Ljava/lang/Runnable;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$8$2;

    iget-object v2, p1, Leu/chainfire/supersu/Installer$8;->Ć:Landroid/content/Context;

    iget-object v3, p1, Leu/chainfire/supersu/Installer$8;->ć:Ljava/lang/Runnable;

    invoke-direct {v1, p1, v4, v2, v3}, Leu/chainfire/supersu/Installer$8$2;-><init>(Leu/chainfire/supersu/Installer$8;ILandroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
