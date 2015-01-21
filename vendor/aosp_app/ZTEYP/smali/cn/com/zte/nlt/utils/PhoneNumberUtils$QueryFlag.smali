.class public final enum Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;
.super Ljava/lang/Enum;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/nlt/utils/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

.field public static final enum CLEAR_RESULT:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

.field public static final enum DO_NOT_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

.field public static final enum DO_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

.field public static final enum NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    new-instance v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    const-string v1, "DO_QUERY"

    invoke-direct {v0, v1, v2}, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    .line 281
    new-instance v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    const-string v1, "DO_NOT_QUERY"

    invoke-direct {v0, v1, v3}, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_NOT_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    .line 282
    new-instance v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    const-string v1, "CLEAR_RESULT"

    invoke-direct {v0, v1, v4}, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->CLEAR_RESULT:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    .line 283
    new-instance v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    const-string v1, "NUM_ERROR"

    invoke-direct {v0, v1, v5}, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    .line 279
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_NOT_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->CLEAR_RESULT:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    aput-object v1, v0, v5

    sput-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->$VALUES:[Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

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
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;
    .locals 1
    .parameter "name"

    .prologue
    .line 279
    const-class v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    return-object v0
.end method

.method public static values()[Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->$VALUES:[Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    invoke-virtual {v0}, [Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    return-object v0
.end method
