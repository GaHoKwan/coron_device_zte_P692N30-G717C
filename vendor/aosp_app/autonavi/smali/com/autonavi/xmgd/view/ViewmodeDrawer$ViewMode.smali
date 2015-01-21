.class public final enum Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

.field public static final enum ViewmodeDrawer_3D:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

.field public static final enum ViewmodeDrawer_AR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

.field public static final enum ViewmodeDrawer_CAR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

.field public static final enum ViewmodeDrawer_NORTH:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    const-string v1, "ViewmodeDrawer_NORTH"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_NORTH:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    new-instance v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    const-string v1, "ViewmodeDrawer_CAR"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_CAR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    new-instance v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    const-string v1, "ViewmodeDrawer_3D"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_3D:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    new-instance v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    const-string v1, "ViewmodeDrawer_AR"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_AR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    sget-object v1, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_NORTH:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_CAR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_3D:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_AR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->$VALUES:[Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;
    .locals 1

    const-class v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->$VALUES:[Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    invoke-virtual {v0}, [Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    return-object v0
.end method
