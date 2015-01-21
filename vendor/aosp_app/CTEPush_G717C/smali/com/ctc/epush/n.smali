.class final Lcom/ctc/epush/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushAppDetail;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushAppDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/n;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/ctc/epush/n;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-static {v0}, Lcom/ctc/epush/PushAppDetail;->b(Lcom/ctc/epush/PushAppDetail;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p3

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ctc/epush/n;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-static {v1}, Lcom/ctc/epush/PushAppDetail;->b(Lcom/ctc/epush/PushAppDetail;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-eq p3, v0, :cond_1

    iget-object v1, p0, Lcom/ctc/epush/n;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-static {v1}, Lcom/ctc/epush/PushAppDetail;->b(Lcom/ctc/epush/PushAppDetail;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
