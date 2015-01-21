.class Leu/chainfire/supersu/Installer$3$1;
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
.field private final synthetic 櫯:Landroid/content/Context;

.field final synthetic 鷭:Leu/chainfire/supersu/Installer$3;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer$3;Landroid/content/Context;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$3$1;->鷭:Leu/chainfire/supersu/Installer$3;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$3$1;->櫯:Landroid/content/Context;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3$1;->櫯:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3$1;->櫯:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1065
    :cond_0
    return-void
.end method
