.class final Lcom/ctc/epush/o;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushAppDetail;

.field private b:Landroid/content/Context;

.field private c:Lcom/ctc/c/a;

.field private d:Ljava/util/ArrayList;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/ctc/epush/PushAppDetail;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/ctc/epush/o;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/o;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/ctc/epush/o;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ctc/epush/o;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ctc/c/a;->a()Lcom/ctc/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/o;->c:Lcom/ctc/c/a;

    const/high16 v0, 0x4316

    invoke-static {p2, v0}, Lcom/ctc/c/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ctc/epush/o;->e:I

    const/high16 v0, 0x4361

    invoke-static {p2, v0}, Lcom/ctc/c/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ctc/epush/o;->f:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ctc/epush/o;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    iget v2, p0, Lcom/ctc/epush/o;->e:I

    iget v3, p0, Lcom/ctc/epush/o;->f:I

    invoke-direct {v0, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/ctc/epush/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/ctc/epush/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ctc/epush/o;->c:Lcom/ctc/c/a;

    iget-object v3, p0, Lcom/ctc/epush/o;->b:Landroid/content/Context;

    new-instance v4, Lcom/ctc/epush/p;

    invoke-direct {v4, p0, v1}, Lcom/ctc/epush/p;-><init>(Lcom/ctc/epush/o;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/ctc/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ctc/c/e;)Landroid/graphics/drawable/Drawable;

    return-object v1
.end method
