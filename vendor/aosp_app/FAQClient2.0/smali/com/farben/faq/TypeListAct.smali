.class public Lcom/farben/faq/TypeListAct;
.super Landroid/app/Activity;


# static fields
.field public static a:Landroid/os/Handler;


# instance fields
.field private b:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/farben/faq/TypeListAct;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/TypeListAct;->b:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/TypeListAct;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/TypeListAct;->b:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/farben/faq/TypeListAct;->setContentView(I)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    new-instance v0, Lcom/farben/faq/av;

    invoke-direct {v0, p0}, Lcom/farben/faq/av;-><init>(Lcom/farben/faq/TypeListAct;)V

    sput-object v0, Lcom/farben/faq/TypeListAct;->a:Landroid/os/Handler;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/farben/faq/TypeListAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/TypeListAct;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/farben/faq/TypeListAct;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/farben/faq/au;

    invoke-direct {v1, p0}, Lcom/farben/faq/au;-><init>(Lcom/farben/faq/TypeListAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/farben/faq/aw;

    invoke-direct {v0, p0}, Lcom/farben/faq/aw;-><init>(Lcom/farben/faq/TypeListAct;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farben/faq/aw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/farben/faq/TypeListAct;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "common_type"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
