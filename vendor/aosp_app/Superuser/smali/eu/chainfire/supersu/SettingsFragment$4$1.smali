.class Leu/chainfire/supersu/SettingsFragment$4$1;
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

.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$4;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$4;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->鷭:Leu/chainfire/supersu/SettingsFragment$4;

    .line 287
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs 櫯()Ljava/lang/Integer;
    .locals 3

    .line 0
    :try_start_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 308
    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->鷭:Leu/chainfire/supersu/SettingsFragment$4;

    invoke-static {v2}, Leu/chainfire/supersu/SettingsFragment$4;->鷭(Leu/chainfire/supersu/SettingsFragment$4;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->ˮ͈(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 310
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/SettingsFragment$4$1;->櫯()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->鷭:Leu/chainfire/supersu/SettingsFragment$4;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$4;->鷭(Leu/chainfire/supersu/SettingsFragment$4;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->櫯(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    .line 294
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 295
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 296
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->鷭:Leu/chainfire/supersu/SettingsFragment$4;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$4;->鷭(Leu/chainfire/supersu/SettingsFragment$4;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-void

    .line 300
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 2

    .line 0
    move-object p1, p0

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/SettingsFragment$4$1;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p1, Leu/chainfire/supersu/SettingsFragment$4$1;->鷭:Leu/chainfire/supersu/SettingsFragment$4;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$4;->鷭(Leu/chainfire/supersu/SettingsFragment$4;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->ˮ͈:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
