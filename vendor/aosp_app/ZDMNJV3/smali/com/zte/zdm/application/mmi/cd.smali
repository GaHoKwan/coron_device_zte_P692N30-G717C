.class public Lcom/zte/zdm/application/mmi/cd;
.super Lcom/zte/zdm/application/mmi/x;


# static fields
.field private static final f:Ljava/lang/String; = "auto_update_when_wifi_open"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/x;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/cd;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/cd;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/cd;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    const v2, 0x7f0d0008

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v3, 0x3fe8

    int-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v1, v3

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zte/zdm/application/ui/g;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/cd;->d()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/cd;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public a(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cd;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    const-string v1, "auto_update_when_wifi_open"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zdm/application/ui/f;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
