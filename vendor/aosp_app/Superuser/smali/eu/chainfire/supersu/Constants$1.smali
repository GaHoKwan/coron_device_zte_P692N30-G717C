.class Leu/chainfire/supersu/Constants$1;
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
.field private final synthetic 鷭:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Constants$OnExpireTimeSelected;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Constants$1;->鷭:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Constants$1;->鷭:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Leu/chainfire/supersu/Constants$1;->鷭:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;

    invoke-static {p2}, Leu/chainfire/supersu/Constants;->Ą(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Leu/chainfire/supersu/Constants$OnExpireTimeSelected;->鷭(J)V

    .line 356
    :cond_0
    return-void
.end method
