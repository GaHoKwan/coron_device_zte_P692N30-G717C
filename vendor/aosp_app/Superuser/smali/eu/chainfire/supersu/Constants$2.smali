.class Leu/chainfire/supersu/Constants$2;
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
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Constants$2;->鷭:Ljava/lang/Runnable;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Constants$2;->鷭:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Leu/chainfire/supersu/Constants$2;->鷭:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 364
    :cond_0
    return-void
.end method
