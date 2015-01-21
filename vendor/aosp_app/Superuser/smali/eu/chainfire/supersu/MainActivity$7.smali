.class Leu/chainfire/supersu/MainActivity$7;
.super Leu/chainfire/supersu/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/chainfire/supersu/AsyncTask<Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    }
.end annotation


# instance fields
.field private ą:Landroid/content/Context;

.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$7;->鷭:Leu/chainfire/supersu/MainActivity;

    .line 419
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$7;->ą:Landroid/content/Context;

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7;->鷭:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$7;)Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7;->ą:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 0
    move-object v0, p1

    check-cast v0, [Landroid/content/Context;

    move-object v3, v0

    move-object p1, p0

    const/4 v0, 0x0

    aget-object v0, v3, v0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$7;->ą:Landroid/content/Context;

    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$7;->ą:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "shown_backup"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_backup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    if-nez v4, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/addon.d"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/addon.d/99-supersu.sh"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$7;->ą:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Z)V

    .line 425
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 4

    .line 0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    move-object p1, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$7;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$7$1;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$7$1;-><init>(Leu/chainfire/supersu/MainActivity$7;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$7$2;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$7$2;-><init>(Leu/chainfire/supersu/MainActivity$7;)V

    const v2, 0x7f090005

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$7$3;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/MainActivity$7$3;-><init>(Leu/chainfire/supersu/MainActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-static {}, Leu/chainfire/supersu/MainActivity;->鷭()V

    :goto_0
    iget-object v0, p1, Leu/chainfire/supersu/MainActivity$7;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method
