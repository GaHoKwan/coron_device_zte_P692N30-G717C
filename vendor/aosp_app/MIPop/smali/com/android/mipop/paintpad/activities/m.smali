.class Lcom/android/mipop/paintpad/activities/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/mipop/paintpad/view/b;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->b(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->i(Lcom/android/mipop/paintpad/activities/MainActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/mipop/paintpad/b/b;->i(Z)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->g(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->h(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->g(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/k;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/k;->dL:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bl()Lcom/android/mipop/paintpad/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mipop/paintpad/b/b;->setColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/m;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->j(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    return-void
.end method
