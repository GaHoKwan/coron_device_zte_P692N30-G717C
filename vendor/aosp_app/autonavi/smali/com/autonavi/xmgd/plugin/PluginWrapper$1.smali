.class final Lcom/autonavi/xmgd/plugin/PluginWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/autonavi/xmgd/plugin/PluginWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/xmgd/plugin/PluginWrapper;Lcom/autonavi/xmgd/plugin/PluginWrapper;)I
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    iget v2, p2, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    if-ge v1, v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    iget v2, p2, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    if-gt v1, v2, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    iget-object v2, p2, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    check-cast p2, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xmgd/plugin/PluginWrapper$1;->compare(Lcom/autonavi/xmgd/plugin/PluginWrapper;Lcom/autonavi/xmgd/plugin/PluginWrapper;)I

    move-result v0

    return v0
.end method
