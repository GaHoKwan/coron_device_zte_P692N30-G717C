.class public final enum Lcom/zte/heartyservice/common/datatype/StateType;
.super Ljava/lang/Enum;
.source "StateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/common/datatype/StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/common/datatype/StateType;

.field public static final enum SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

.field public static final enum UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/zte/heartyservice/common/datatype/StateType;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    new-instance v0, Lcom/zte/heartyservice/common/datatype/StateType;

    const-string v1, "UNSELECT"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/common/datatype/StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/heartyservice/common/datatype/StateType;

    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/common/datatype/StateType;->$VALUES:[Lcom/zte/heartyservice/common/datatype/StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/StateType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/StateType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/common/datatype/StateType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/zte/heartyservice/common/datatype/StateType;->$VALUES:[Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/common/datatype/StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/common/datatype/StateType;

    return-object v0
.end method
