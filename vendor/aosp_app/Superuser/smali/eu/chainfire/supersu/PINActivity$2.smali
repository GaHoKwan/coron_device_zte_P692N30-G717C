.class Leu/chainfire/supersu/PINActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic 鷭:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$9;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PINActivity$2;->鷭:Ljava/lang/Runnable;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$2;->鷭:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$2;->鷭:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 114
    :cond_0
    return-void
.end method