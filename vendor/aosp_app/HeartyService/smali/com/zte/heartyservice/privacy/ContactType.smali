.class final enum Lcom/zte/heartyservice/privacy/ContactType;
.super Ljava/lang/Enum;
.source "ContactType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/privacy/ContactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/privacy/ContactType;

.field public static final enum FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

.field public static final enum FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

.field public static final enum FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

.field public static final enum NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/zte/heartyservice/privacy/ContactType;

    const-string v1, "FROM_PHONE_SIM"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    new-instance v0, Lcom/zte/heartyservice/privacy/ContactType;

    const-string v1, "FROM_SMS"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/privacy/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    new-instance v0, Lcom/zte/heartyservice/privacy/ContactType;

    const-string v1, "FROM_CALLLOG"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/privacy/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    new-instance v0, Lcom/zte/heartyservice/privacy/ContactType;

    const-string v1, "NEW_CONTACT"

    invoke-direct {v0, v1, v5}, Lcom/zte/heartyservice/privacy/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ContactType;->NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/heartyservice/privacy/ContactType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/heartyservice/privacy/ContactType;->$VALUES:[Lcom/zte/heartyservice/privacy/ContactType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/ContactType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/zte/heartyservice/privacy/ContactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/ContactType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/privacy/ContactType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->$VALUES:[Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/privacy/ContactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/privacy/ContactType;

    return-object v0
.end method
