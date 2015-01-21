.class public Lcom/autonavi/xmgd/controls/h;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:[Lcom/autonavi/xmgd/e/k;

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:Lcom/autonavi/xmgd/controls/i;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/h;->f:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/h;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/h;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/h;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/h;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/h;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/i;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/h;->e:Lcom/autonavi/xmgd/controls/i;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/controls/h;->g:Z

    return-void
.end method

.method public a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/h;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/h;->b:[Lcom/autonavi/xmgd/e/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/h;->f:Z

    :goto_0
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/autonavi/xmgd/controls/h;->d:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/autonavi/xmgd/controls/h;->b:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/h;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/h;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/h;->b:[Lcom/autonavi/xmgd/e/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/h;->b:[Lcom/autonavi/xmgd/e/k;

    array-length v0, v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
