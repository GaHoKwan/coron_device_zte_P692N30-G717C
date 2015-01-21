.class public final enum Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;
.super Ljava/lang/Enum;


# static fields
.field public static final enum TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

.field public static final enum WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

.field public static final enum WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    const-string v1, "TOKEN"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    const-string v1, "WHITE_SPACE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->a:[Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->a:[Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    return-object v0
.end method
