.class final Lcom/farben/faq/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ListActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ai;->a:Lcom/farben/faq/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/ai;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->d(Lcom/farben/faq/ListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ai;->a:Lcom/farben/faq/ListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/farben/faq/ListActivity;->a(Lcom/farben/faq/ListActivity;I)V

    iget-object v0, p0, Lcom/farben/faq/ai;->a:Lcom/farben/faq/ListActivity;

    const-string v1, "hottest"

    invoke-static {v0, v1}, Lcom/farben/faq/ListActivity;->a(Lcom/farben/faq/ListActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
