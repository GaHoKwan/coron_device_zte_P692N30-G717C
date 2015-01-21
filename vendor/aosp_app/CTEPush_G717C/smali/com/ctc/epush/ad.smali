.class final Lcom/ctc/epush/ad;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushRecordDialogActivity;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;

.field private f:Lcom/ctc/c/a;


# direct methods
.method public constructor <init>(Lcom/ctc/epush/PushRecordDialogActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/ctc/epush/ad;->a:Lcom/ctc/epush/PushRecordDialogActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/ad;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/ctc/epush/ad;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/ad;->c:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/ctc/epush/ad;->b:Ljava/util/List;

    invoke-static {}, Lcom/ctc/c/a;->a()Lcom/ctc/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/ad;->f:Lcom/ctc/c/a;

    return-void
.end method

.method private a(I)Lcom/ctc/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/ad;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ctc/epush/ad;->a(I)Lcom/ctc/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-direct {p0, p1}, Lcom/ctc/epush/ad;->a(I)Lcom/ctc/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/ctc/epush/ad;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/ctc/epush/af;

    invoke-direct {v3, p0}, Lcom/ctc/epush/af;-><init>(Lcom/ctc/epush/ad;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/ctc/epush/af;->a:Landroid/widget/TextView;

    const v0, 0x7f080018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/ctc/epush/af;->b:Landroid/widget/TextView;

    const v0, 0x7f080016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/ctc/epush/af;->c:Landroid/widget/ImageView;

    iget-object v0, v3, Lcom/ctc/epush/af;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/ctc/epush/af;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ctc/a/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ctc/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u7248  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ctc/a/a;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ctc/c/h;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/ctc/epush/af;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/ctc/epush/af;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ctc/epush/ad;->f:Lcom/ctc/c/a;

    iget-object v4, p0, Lcom/ctc/epush/ad;->d:Landroid/content/Context;

    new-instance v5, Lcom/ctc/epush/ae;

    invoke-direct {v5, p0, v1}, Lcom/ctc/epush/ae;-><init>(Lcom/ctc/epush/ad;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v0, v5}, Lcom/ctc/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ctc/c/e;)Landroid/graphics/drawable/Drawable;

    return-object v2
.end method
