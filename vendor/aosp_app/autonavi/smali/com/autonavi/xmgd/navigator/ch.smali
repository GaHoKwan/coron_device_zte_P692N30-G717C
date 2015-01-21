.class Lcom/autonavi/xmgd/navigator/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ch;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/autonavi/xmgd/b/a;->b(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/xmgd/b/a;->a(II)V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Lcom/autonavi/xmgd/b/a;->a(I[I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ch;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->M(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/d;->notifyDataSetChanged()V

    return v4

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, p3, v4}, Lcom/autonavi/xmgd/b/a;->a(II)V

    goto :goto_1
.end method
