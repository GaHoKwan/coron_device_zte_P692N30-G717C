.class Leu/chainfire/supersu/MainActivity$7$1;
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
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity$7;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$7;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$7$1;->鷭:Leu/chainfire/supersu/MainActivity$7;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$7$1;)Leu/chainfire/supersu/MainActivity$7;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->鷭:Leu/chainfire/supersu/MainActivity$7;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 0
    new-instance p1, Leu/chainfire/supersu/Installer;

    invoke-direct {p1}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->鷭:Leu/chainfire/supersu/MainActivity$7;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$7;->鷭(Leu/chainfire/supersu/MainActivity$7;)Landroid/content/Context;

    move-result-object p2

    new-instance v3, Leu/chainfire/supersu/MainActivity$7$1$1;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/MainActivity$7$1$1;-><init>(Leu/chainfire/supersu/MainActivity$7$1;)V

    new-instance v0, Leu/chainfire/supersu/Installer$6;

    invoke-direct {v0, p1, p2, v3}, Leu/chainfire/supersu/Installer$6;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$6;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 452
    return-void
.end method
