.class Laau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Laaq;

.field final synthetic a:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Laaq;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Laau;->a:Laaq;

    iput-object p2, p0, Laau;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1454
    iget-object v1, p0, Laau;->a:Laaq;

    iget-object v0, p0, Laau;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Laaq;->b(Laaq;Z)V

    .line 1455
    return-void

    .line 1454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
