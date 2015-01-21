.class public final enum Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;
.super Ljava/lang/Enum;
.source "AliveUpdateException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/AliveUpdateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExceptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

.field public static final enum ClassNotFoundException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

.field public static final enum IOException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

.field public static final enum JSONException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

.field public static final enum OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    const-string v1, "IOException"

    invoke-direct {v0, v1, v2}, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->IOException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 11
    new-instance v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    const-string v1, "JSONException"

    invoke-direct {v0, v1, v3}, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->JSONException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 12
    new-instance v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    const-string v1, "ClassNotFoundException"

    invoke-direct {v0, v1, v4}, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->ClassNotFoundException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 13
    new-instance v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    const-string v1, "OtherException"

    invoke-direct {v0, v1, v5}, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    sget-object v1, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->IOException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->JSONException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->ClassNotFoundException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->$VALUES:[Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    return-object v0
.end method

.method public static values()[Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->$VALUES:[Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    invoke-virtual {v0}, [Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    return-object v0
.end method
