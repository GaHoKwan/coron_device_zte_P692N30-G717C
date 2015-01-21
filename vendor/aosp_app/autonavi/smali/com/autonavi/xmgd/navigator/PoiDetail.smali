.class public Lcom/autonavi/xmgd/navigator/PoiDetail;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Lcom/autonavi/xmgd/f/o;


# instance fields
.field private a:Lcom/autonavi/xmgd/f/z;

.field private b:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->c:Z

    return-void
.end method

.method private a(IIII)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0c0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0c0111

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    return-object v1
.end method

.method private a()V
    .locals 12

    const v11, 0x7f02013d

    const v10, 0x7f0c0110

    const v9, 0x7f08000a

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "poi"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/z;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    const-string v0, "IPoiOperator"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const v1, 0x7f0c0107

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/view/GDTitle;

    const v3, 0x7f070065

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v1, 0x7f0c0108

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0109

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v4

    iget-object v5, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v6, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/xmgd/naviservice/q;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    :cond_1
    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0x7f0c010b

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/autonavi/xmgd/utility/Tool;->showUIPoiAddressInfo(Lcom/autonavi/xmgd/e/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c010a

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v3

    iget-object v4, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/autonavi/xmgd/utility/Tool;->getUnitStr(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c010c

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const-class v3, Lcom/autonavi/xmgd/f/w;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v3, Lcom/autonavi/xmgd/f/w;

    invoke-direct {v3}, Lcom/autonavi/xmgd/f/w;-><init>()V

    invoke-interface {v3, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/fj;

    invoke-direct {v4, p0, v3}, Lcom/autonavi/xmgd/navigator/fj;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const v1, 0x7f0c010d

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const-class v3, Lcom/autonavi/xmgd/f/r;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v3, Lcom/autonavi/xmgd/f/r;

    invoke-direct {v3}, Lcom/autonavi/xmgd/f/r;-><init>()V

    invoke-interface {v3, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/fu;

    invoke-direct {v4, p0, v3}, Lcom/autonavi/xmgd/navigator/fu;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const v1, 0x7f0c010e

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v3, Lcom/autonavi/xmgd/f/a;

    invoke-direct {v3}, Lcom/autonavi/xmgd/f/a;-><init>()V

    invoke-interface {v3, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/fw;

    invoke-direct {v4, p0, v1, v3}, Lcom/autonavi/xmgd/navigator/fw;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Landroid/widget/ImageView;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const v1, 0x7f0c0112

    const v3, 0x7f020154

    const v4, 0x7f0200cb

    const v5, 0x7f070031

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_6

    const-class v1, Lcom/autonavi/xmgd/f/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/u;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/u;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/fx;

    invoke-direct {v4, p0, v1}, Lcom/autonavi/xmgd/navigator/fx;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const v1, 0x7f0c0113

    const v3, 0x7f020157

    const v4, 0x7f0200ce

    const v5, 0x7f070032

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_7

    const-class v1, Lcom/autonavi/xmgd/f/v;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/v;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/v;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/fy;

    invoke-direct {v4, p0, v1}, Lcom/autonavi/xmgd/navigator/fy;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    const v1, 0x7f0c0114

    const v3, 0x7f0200b9

    const v4, 0x7f070030

    invoke-direct {p0, v1, v11, v3, v4}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_8

    const-class v1, Lcom/autonavi/xmgd/f/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/s;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/s;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/fz;

    invoke-direct {v4, p0, v1}, Lcom/autonavi/xmgd/navigator/fz;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    const v1, 0x7f0c0115

    const v3, 0x7f020140

    const v4, 0x7f0200c2

    const v5, 0x7f070033

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_9

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/y;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/y;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/ga;

    invoke-direct {v4, p0, v1}, Lcom/autonavi/xmgd/navigator/ga;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    const v1, 0x7f0c0116

    const v3, 0x7f020154

    const v4, 0x7f0200bf

    const v5, 0x7f070034

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_a

    const-class v1, Lcom/autonavi/xmgd/f/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/t;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/t;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/gb;

    invoke-direct {v4, p0, v1}, Lcom/autonavi/xmgd/navigator/gb;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    const v1, 0x7f0c0117

    const v3, 0x7f020157

    const v4, 0x7f0200c5

    const v5, 0x7f070035

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_b

    const-class v1, Lcom/autonavi/xmgd/f/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/q;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/q;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/gc;

    invoke-direct {v4, p0, v1}, Lcom/autonavi/xmgd/navigator/gc;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    invoke-static {v2}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const v1, 0x7f0c0118

    const v2, 0x7f0200bc

    const v3, 0x7f07002f

    invoke-direct {p0, v1, v11, v2, v3}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_c

    const-class v1, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/g;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/g;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fk;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/fk;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    const v1, 0x7f0c0119

    const v2, 0x7f020140

    const v3, 0x7f0200b3

    const v4, 0x7f070036

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_f

    const-class v1, Lcom/autonavi/xmgd/f/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/c;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/c;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fm;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/fm;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b
    const v1, 0x7f0c011a

    const v2, 0x7f020151

    const v3, 0x7f0200c8

    const v4, 0x7f070037

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_10

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/b;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/b;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fn;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/fn;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_c
    const v1, 0x7f0c011b

    const v2, 0x7f02013a

    const v3, 0x7f0200b6

    const v4, 0x7f070038

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_11

    const-class v1, Lcom/autonavi/xmgd/f/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/i;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/i;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fo;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/fo;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d
    const v1, 0x7f0c011c

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    if-eqz v0, :cond_13

    const-class v2, Lcom/autonavi/xmgd/f/l;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/autonavi/xmgd/f/l;

    invoke-direct {v0}, Lcom/autonavi/xmgd/f/l;-><init>()V

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v2, Lcom/autonavi/xmgd/navigator/fq;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/xmgd/navigator/fq;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e
    return-void

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v3, 0x7f02008a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v3, 0x7f020088

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v3, 0x7f020086

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v3, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v3, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v3, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v3, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v3, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v3, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v2, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_a

    :cond_d
    const v1, 0x7f0c0118

    const v2, 0x7f0200bc

    const v3, 0x7f07003b

    invoke-direct {p0, v1, v11, v2, v3}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_e

    const-class v1, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/h;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/h;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fl;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/fl;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v2, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_a

    :cond_f
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v2, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v2, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_c

    :cond_11
    if-eqz v0, :cond_12

    const-class v1, Lcom/autonavi/xmgd/f/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/autonavi/xmgd/f/e;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/e;-><init>()V

    invoke-interface {v1, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fp;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/fp;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0, v2, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto/16 :goto_d

    :cond_13
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_e
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0c0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private a(Lcom/autonavi/xmgd/f/n;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/autonavi/xmgd/f/n;->b()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    iget v0, v1, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/PoiDetail;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-interface {p1, v0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-interface {p1, v0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/f/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Lcom/autonavi/xmgd/f/n;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/PoiDetail;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/PoiDetail;)Lcom/autonavi/xmgd/utility/CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-object v0
.end method

.method private b()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    const-string v4, ""

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 10

    const v9, 0x7f08000a

    const v8, 0x7f02013d

    const v7, 0x7f0200bc

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "IPoiOperator"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f0c0118

    const v3, 0x7f07002f

    invoke-direct {p0, v2, v8, v7, v3}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v2

    const-class v3, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/autonavi/xmgd/f/g;

    invoke-direct {v0}, Lcom/autonavi/xmgd/f/g;-><init>()V

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fr;

    invoke-direct {v3, p0, v1, v0}, Lcom/autonavi/xmgd/navigator/fr;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, v2, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0118

    const v3, 0x7f07003b

    invoke-direct {p0, v1, v8, v7, v3}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(IIII)Landroid/view/View;

    move-result-object v1

    const-class v3, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/autonavi/xmgd/f/h;

    invoke-direct {v0}, Lcom/autonavi/xmgd/f/h;-><init>()V

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/fs;

    invoke-direct {v3, p0, v2, v0}, Lcom/autonavi/xmgd/navigator/fs;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/f/n;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, v1, v9}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/autonavi/xmgd/navigator/PoiDetail;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->a:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->c(II)I

    move-result v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v3, Lcom/autonavi/xmgd/navigator/ft;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/ft;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;I)V

    invoke-direct {v0, p0, v7, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f070015

    invoke-static {v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07003c

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'red\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</font>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/fv;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/fv;-><init>(Lcom/autonavi/xmgd/navigator/PoiDetail;)V

    invoke-direct {v0, p0, v4, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070014

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->c:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/PoiDetail;->c:Z

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/PoiDetail;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
