.class Leu/chainfire/supersu/MainActivity$5$1;
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
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity$5;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$5;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$5$1;->鷭:Leu/chainfire/supersu/MainActivity$5;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$5$1;)Leu/chainfire/supersu/MainActivity$5;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$5$1;->鷭:Leu/chainfire/supersu/MainActivity$5;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 0
    new-instance p1, Leu/chainfire/supersu/Installer;

    invoke-direct {p1}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$5$1;->鷭:Leu/chainfire/supersu/MainActivity$5;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$5;->鷭(Leu/chainfire/supersu/MainActivity$5;)Leu/chainfire/supersu/MainActivity;

    move-result-object p2

    sget-object v6, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    new-instance v7, Leu/chainfire/supersu/MainActivity$5$1$1;

    invoke-direct {v7, p0}, Leu/chainfire/supersu/MainActivity$5$1$1;-><init>(Leu/chainfire/supersu/MainActivity$5$1;)V

    new-instance v0, Leu/chainfire/supersu/Installer$3;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-object v5, v7

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Leu/chainfire/supersu/Installer$3;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Leu/chainfire/supersu/Installer$UninstallMode;ZLeu/chainfire/supersu/MainActivity$5$1$1;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$3;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 341
    return-void
.end method