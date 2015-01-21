.class final enum Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;
.super Ljava/lang/Enum;
.source "DisguiseAbstractCommunicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DeleteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

.field public static final enum REMOVE:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

.field public static final enum RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

.field public static final enum TO_LOCAL:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->REMOVE:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    const-string v1, "TO_LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    const-string v1, "RETAIN_PRIVACY"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    sget-object v1, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->REMOVE:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->$VALUES:[Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->$VALUES:[Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;

    return-object v0
.end method
