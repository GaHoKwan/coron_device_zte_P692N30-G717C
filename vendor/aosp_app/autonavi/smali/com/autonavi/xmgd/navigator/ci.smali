.class Lcom/autonavi/xmgd/navigator/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ci;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Lcom/autonavi/xmgd/b/a;->a(II)V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v3

    aget v2, v3, p4

    if-ne v2, v0, :cond_1

    aput v1, v3, p4

    :goto_0
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget v5, v3, v2

    if-ne v5, v0, :cond_2

    :goto_2
    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/xmgd/b/a;->a(II)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3, v3}, Lcom/autonavi/xmgd/b/a;->a(I[I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ci;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->M(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/d;->notifyDataSetChanged()V

    return v1

    :cond_1
    aput v0, v3, p4

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
