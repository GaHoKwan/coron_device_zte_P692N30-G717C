.class Leu/chainfire/supersu/MainActivity$4;
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
.field private ą:Leu/chainfire/supersu/Installer;

.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    .line 196
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method

.method private varargs 櫯()Ljava/lang/Integer;
    .locals 3

    .line 0
    :try_start_0
    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    .line 208
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    :catch_0
    move-exception v2

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    .line 212
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/Installer;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity$4;->櫯()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Z)V

    .line 202
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 4

    .line 0
    move-object p1, p0

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    if-eqz v0, :cond_7

    iget-object v3, p1, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    iget-boolean v0, v3, Leu/chainfire/supersu/Installer;->ą:Z

    if-nez v0, :cond_0

    iget-boolean v0, v3, Leu/chainfire/supersu/Installer;->ć:Z

    if-nez v0, :cond_0

    iget-boolean v0, v3, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p1, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    iget v0, v3, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, v3, Leu/chainfire/supersu/Installer;->ˮ͈:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, v3, Leu/chainfire/supersu/Installer;->Ą:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$4$1;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$4$1;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    const v2, 0x7f09000b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$4$2;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$4$2;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    const v2, 0x7f090005

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$4$3;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$4$3;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_5

    :cond_2
    iget-object v3, p1, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    iget-boolean v0, v3, Leu/chainfire/supersu/Installer;->ą:Z

    if-nez v0, :cond_3

    iget-boolean v0, v3, Leu/chainfire/supersu/Installer;->ć:Z

    if-nez v0, :cond_3

    iget-boolean v0, v3, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    iget-object v3, p1, Leu/chainfire/supersu/MainActivity$4;->ą:Leu/chainfire/supersu/Installer;

    iget v0, v3, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4

    iget v0, v3, Leu/chainfire/supersu/Installer;->ˮ͈:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4

    iget v0, v3, Leu/chainfire/supersu/Installer;->Ą:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_6

    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-boolean v1, Leu/chainfire/supersu/Constants;->鷭:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0900db

    goto :goto_4

    :cond_5
    const v1, 0x7f090020

    :goto_4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$4$4;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$4$4;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$4$5;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$4$5;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    :cond_6
    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->Ą(Leu/chainfire/supersu/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_5
    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$4;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method
