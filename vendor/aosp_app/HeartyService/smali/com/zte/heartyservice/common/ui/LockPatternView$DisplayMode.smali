.class public final enum Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/ui/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 186
    new-instance v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 191
    new-instance v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->$VALUES:[Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

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
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 176
    const-class v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->$VALUES:[Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    return-object v0
.end method
