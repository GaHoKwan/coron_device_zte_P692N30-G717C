.class Leu/chainfire/supersu/Installer$8$1;
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
.field private final synthetic ȃ:Ljava/lang/Runnable;

.field private final synthetic ˮ͈:Landroid/content/Context;

.field private final synthetic 櫯:I

.field final synthetic 鷭:Leu/chainfire/supersu/Installer$8;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer$8;ILandroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$8$1;->鷭:Leu/chainfire/supersu/Installer$8;

    iput p2, p0, Leu/chainfire/supersu/Installer$8$1;->櫯:I

    iput-object p3, p0, Leu/chainfire/supersu/Installer$8$1;->ˮ͈:Landroid/content/Context;

    iput-object p4, p0, Leu/chainfire/supersu/Installer$8$1;->ȃ:Ljava/lang/Runnable;

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/Installer$8$1;->櫯:I

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8$1;->ˮ͈:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/Installer$8$1;->ˮ͈:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1358
    return-void

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8$1;->ȃ:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Leu/chainfire/supersu/Installer$8$1;->ȃ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1361
    :cond_1
    return-void
.end method
