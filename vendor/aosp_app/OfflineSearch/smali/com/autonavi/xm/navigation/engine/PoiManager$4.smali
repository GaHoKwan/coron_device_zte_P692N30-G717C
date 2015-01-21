.class Lcom/autonavi/xm/navigation/engine/PoiManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field collator:Ljava/text/RuleBasedCollator;

.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/PoiManager;Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$4;->this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$4;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$4;->val$locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$4;->collator:Ljava/text/RuleBasedCollator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$4;->collator:Ljava/text/RuleBasedCollator;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iget-object v2, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    check-cast p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager$4;->compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    return v0
.end method
