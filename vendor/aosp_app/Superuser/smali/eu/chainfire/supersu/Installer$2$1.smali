.class Leu/chainfire/supersu/Installer$2$1;
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
.field private final synthetic ˮ͈:Landroid/content/Context;

.field private final synthetic 櫯:I

.field final synthetic 鷭:Leu/chainfire/supersu/Installer$2;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer$2;ILandroid/content/Context;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$2$1;->鷭:Leu/chainfire/supersu/Installer$2;

    iput p2, p0, Leu/chainfire/supersu/Installer$2$1;->櫯:I

    iput-object p3, p0, Leu/chainfire/supersu/Installer$2$1;->ˮ͈:Landroid/content/Context;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/Installer$2$1;->櫯:I

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Installer$2$1;->ˮ͈:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Installer$2$1;->ˮ͈:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 979
    :cond_0
    return-void
.end method
