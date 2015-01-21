.class Leu/chainfire/supersu/Settings$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Leu/chainfire/supersu/Settings$App;>;"
    }
.end annotation


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 0
    move-object v0, p1

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    move-object v1, p2

    check-cast v1, Leu/chainfire/supersu/Settings$App;

    move-object p2, v1

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    iget-object v1, p2, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
