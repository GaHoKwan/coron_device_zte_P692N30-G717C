.class Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final synthetic 櫯:Landroid/app/Activity;

.field final synthetic 鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    iput-object p2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->櫯:Landroid/app/Activity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 181
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->櫯:Landroid/app/Activity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    const v1, 0x7f090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 188
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 193
    return-void
.end method
