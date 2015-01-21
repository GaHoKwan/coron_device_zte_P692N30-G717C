.class Leu/chainfire/supersu/Logs$1;
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
        "Ljava/lang/Object;Ljava/util/Comparator<Leu/chainfire/supersu/Logs$Log;>;"
    }
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/Logs;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Logs;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Logs$1;->鷭:Leu/chainfire/supersu/Logs;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 0
    move-object v0, p1

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    move-object v1, p2

    check-cast v1, Leu/chainfire/supersu/Logs$Log;

    move-object p2, v1

    move-object p1, v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p2, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p1, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    iget v1, p2, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p1, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    iget v1, p2, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
