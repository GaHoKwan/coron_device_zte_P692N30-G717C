.class public Lcom/autonavi/xmgd/navigator/fh;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/autonavi/xmgd/navigator/fi;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/fi;-><init>(Lcom/autonavi/xmgd/navigator/fh;)V

    const v0, 0x7f0c0054

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/fi;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/fi;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/fi;->c:Landroid/widget/TextView;

    const v0, 0x7f0c018a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/fi;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/fi;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/fi;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/fi;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->getSecondTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/autonavi/xmgd/navigator/fi;->d:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/fi;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/fi;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/fi;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/fi;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fh;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/fi;

    move-object v1, v0

    goto/16 :goto_0
.end method
