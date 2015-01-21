.class Lakf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lajq;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lakf;->a:Lajq;

    iput-object p2, p0, Lakf;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1217
    iget-object v1, p0, Lakf;->a:Lajq;

    iget-object v0, p0, Lakf;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lajq;->a(Lajq;Z)V

    .line 1218
    return-void

    .line 1217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
