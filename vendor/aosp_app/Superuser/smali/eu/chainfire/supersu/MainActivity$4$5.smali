.class Leu/chainfire/supersu/MainActivity$4$5;
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
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity$4;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$4;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4$5;->鷭:Leu/chainfire/supersu/MainActivity$4;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$5;->鷭:Leu/chainfire/supersu/MainActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->finish()V

    .line 294
    return-void
.end method
