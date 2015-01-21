.class final Lcom/ctc/epush/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/e;


# instance fields
.field final synthetic a:Lcom/ctc/epush/x;

.field private final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/ctc/epush/x;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/z;->a:Lcom/ctc/epush/x;

    iput-object p2, p0, Lcom/ctc/epush/z;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/z;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
