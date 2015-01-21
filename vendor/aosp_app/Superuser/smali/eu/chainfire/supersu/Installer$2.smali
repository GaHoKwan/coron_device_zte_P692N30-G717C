.class Leu/chainfire/supersu/Installer$2;
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

.field private final synthetic ć:Ljava/lang/Boolean;

.field private final synthetic ˮ͍:Ljava/lang/Runnable;

.field final synthetic 鷭:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$2;->鷭:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/supersu/Installer$2;->ć:Ljava/lang/Boolean;

    iput-object p4, p0, Leu/chainfire/supersu/Installer$2;->ˮ͍:Ljava/lang/Runnable;

    .line 927
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs 櫯()Ljava/lang/Integer;
    .locals 2

    .line 0
    :try_start_0
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 952
    :catch_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->鷭:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->櫯(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 955
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/Installer$2;->櫯()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->櫯(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    .line 934
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 935
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 936
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 938
    sget-boolean v2, Leu/chainfire/supersu/Constants;->鷭:Z

    if-eqz v2, :cond_0

    .line 939
    const v2, 0x7f0900de

    goto :goto_0

    .line 940
    :cond_0
    const v2, 0x7f090021

    .line 937
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    return-void

    .line 944
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 946
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 5

    .line 0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    move-object p1, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/Installer$2;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p1, Leu/chainfire/supersu/Installer$2;->ć:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p1, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-boolean v1, Leu/chainfire/supersu/Constants;->鷭:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne v4, v1, :cond_1

    const v1, 0x7f0900dc

    goto :goto_0

    :cond_1
    const v1, 0x7f0900dd

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    const v1, 0x7f090022

    goto :goto_0

    :cond_3
    const v1, 0x7f090023

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$2$1;

    iget-object v2, p1, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    invoke-direct {v1, p1, v4, v2}, Leu/chainfire/supersu/Installer$2$1;-><init>(Leu/chainfire/supersu/Installer$2;ILandroid/content/Context;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$2$2;

    iget-object v2, p1, Leu/chainfire/supersu/Installer$2;->Ć:Landroid/content/Context;

    invoke-direct {v1, p1, v4, v2}, Leu/chainfire/supersu/Installer$2$2;-><init>(Leu/chainfire/supersu/Installer$2;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    iget-object v0, p1, Leu/chainfire/supersu/Installer$2;->ˮ͍:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget-object v0, p1, Leu/chainfire/supersu/Installer$2;->ˮ͍:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method
