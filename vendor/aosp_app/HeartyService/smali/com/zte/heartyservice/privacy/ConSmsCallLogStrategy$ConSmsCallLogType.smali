.class final enum Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;
.super Ljava/lang/Enum;
.source "ConSmsCallLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConSmsCallLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field public static final enum FORWORD:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field public static final enum REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field public static final enum RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field public static final enum TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    new-instance v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    const-string v1, "TO_LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    new-instance v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    const-string v1, "RETAIN_PRIVACY"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    new-instance v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    const-string v1, "FORWORD"

    invoke-direct {v0, v1, v5}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->FORWORD:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->FORWORD:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->$VALUES:[Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->$VALUES:[Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    return-object v0
.end method
