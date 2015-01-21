.class Lcom/android/mipop/paintpad/activities/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0063

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->k(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->j()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->g()I

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->m(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0, v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->f()I

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->m(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0, v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->k()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->h()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0, v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/c;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->m(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0053 -> :sswitch_0
        0x7f0c0054 -> :sswitch_1
        0x7f0c0055 -> :sswitch_4
        0x7f0c0056 -> :sswitch_3
        0x7f0c0057 -> :sswitch_2
        0x7f0c0063 -> :sswitch_5
    .end sparse-switch
.end method
