.class final Lcom/ctc/epush/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/x;

.field private final synthetic b:Lcom/ctc/a/a;


# direct methods
.method constructor <init>(Lcom/ctc/epush/x;Lcom/ctc/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/y;->a:Lcom/ctc/epush/x;

    iput-object p2, p0, Lcom/ctc/epush/y;->b:Lcom/ctc/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/y;->a:Lcom/ctc/epush/x;

    invoke-static {v0}, Lcom/ctc/epush/x;->a(Lcom/ctc/epush/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/epush/y;->b:Lcom/ctc/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/y;->a:Lcom/ctc/epush/x;

    invoke-static {v0}, Lcom/ctc/epush/x;->a(Lcom/ctc/epush/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/epush/y;->b:Lcom/ctc/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ctc/epush/y;->a:Lcom/ctc/epush/x;

    invoke-static {v0}, Lcom/ctc/epush/x;->a(Lcom/ctc/epush/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/epush/y;->b:Lcom/ctc/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/y;->a:Lcom/ctc/epush/x;

    invoke-static {v0}, Lcom/ctc/epush/x;->a(Lcom/ctc/epush/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/epush/y;->a:Lcom/ctc/epush/x;

    invoke-static {v1}, Lcom/ctc/epush/x;->a(Lcom/ctc/epush/x;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ctc/epush/y;->b:Lcom/ctc/a/a;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
