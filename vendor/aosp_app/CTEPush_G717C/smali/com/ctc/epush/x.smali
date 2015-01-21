.class final Lcom/ctc/epush/x;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;

.field private f:Lcom/ctc/c/a;


# direct methods
.method public constructor <init>(Lcom/ctc/epush/PushDialogActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/ctc/epush/x;->a:Lcom/ctc/epush/PushDialogActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/x;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/ctc/epush/x;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/x;->c:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/ctc/epush/x;->b:Ljava/util/List;

    invoke-static {}, Lcom/ctc/c/a;->a()Lcom/ctc/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/x;->f:Lcom/ctc/c/a;

    return-void
.end method

.method private a(I)Lcom/ctc/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/ctc/epush/x;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/x;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/x;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ctc/epush/x;->a(I)Lcom/ctc/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/ctc/epush/x;->a(I)Lcom/ctc/a/a;

    move-result-object v2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/x;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ctc/epush/aa;

    invoke-direct {v1, p0}, Lcom/ctc/epush/aa;-><init>(Lcom/ctc/epush/x;)V

    const v0, 0x7f080017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ctc/epush/aa;->a:Landroid/widget/TextView;

    const v0, 0x7f080018

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ctc/epush/aa;->b:Landroid/widget/TextView;

    const v0, 0x7f080019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ctc/epush/aa;->c:Landroid/widget/TextView;

    const v0, 0x7f080015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/ctc/epush/aa;->e:Landroid/widget/CheckBox;

    const v0, 0x7f080016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ctc/epush/aa;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v3, v0, Lcom/ctc/epush/aa;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ctc/a/a;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_0

    const/16 v5, 0x23

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ctc/epush/aa;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ctc/epush/aa;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ctc/a/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ctc/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u7248  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ctc/a/a;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ctc/c/h;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ctc/epush/aa;->e:Landroid/widget/CheckBox;

    new-instance v3, Lcom/ctc/epush/y;

    invoke-direct {v3, p0, v2}, Lcom/ctc/epush/y;-><init>(Lcom/ctc/epush/x;Lcom/ctc/a/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/ctc/epush/x;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ctc/epush/aa;->e:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v1, v0, Lcom/ctc/epush/aa;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v0, Lcom/ctc/epush/aa;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ctc/epush/x;->f:Lcom/ctc/c/a;

    iget-object v3, p0, Lcom/ctc/epush/x;->d:Landroid/content/Context;

    new-instance v4, Lcom/ctc/epush/z;

    invoke-direct {v4, p0, v0}, Lcom/ctc/epush/z;-><init>(Lcom/ctc/epush/x;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/ctc/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ctc/c/e;)Landroid/graphics/drawable/Drawable;

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/epush/aa;

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lcom/ctc/epush/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
