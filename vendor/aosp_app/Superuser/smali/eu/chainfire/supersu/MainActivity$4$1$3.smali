.class Leu/chainfire/supersu/MainActivity$4$1$3;
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
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity$4$1;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$4$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4$1$3;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$4$1$3;)Leu/chainfire/supersu/MainActivity$4$1;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1$3;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1$3;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4$1;->鷭(Leu/chainfire/supersu/MainActivity$4$1;)Leu/chainfire/supersu/MainActivity$4;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;Z)V

    .line 251
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1$3;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4$1;->鷭(Leu/chainfire/supersu/MainActivity$4$1;)Leu/chainfire/supersu/MainActivity$4;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->鷭(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/Installer;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1$3;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4$1;->鷭(Leu/chainfire/supersu/MainActivity$4$1;)Leu/chainfire/supersu/MainActivity$4;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object p2

    new-instance v4, Leu/chainfire/supersu/MainActivity$4$1$3$1;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/MainActivity$4$1$3$1;-><init>(Leu/chainfire/supersu/MainActivity$4$1$3;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v0, Leu/chainfire/supersu/Installer$2;

    invoke-direct {v0, p1, p2, v3, v4}, Leu/chainfire/supersu/Installer$2;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$2;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 257
    return-void
.end method
