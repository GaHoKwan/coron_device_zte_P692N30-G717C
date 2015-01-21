.class final Lcom/ctc/epush/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/e;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushAppDetail;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushAppDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/m;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/m;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-static {v0}, Lcom/ctc/epush/PushAppDetail;->a(Lcom/ctc/epush/PushAppDetail;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
