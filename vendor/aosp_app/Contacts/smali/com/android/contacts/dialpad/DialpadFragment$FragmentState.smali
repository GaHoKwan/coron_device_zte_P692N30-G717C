.class final enum Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;
.super Ljava/lang/Enum;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FragmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field public static final enum CREATED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field public static final enum DESTROYED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field public static final enum PAUSED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field public static final enum RESUMED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field public static final enum STOPPED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field public static final enum UNKNOWN:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2495
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->UNKNOWN:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 2496
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->CREATED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 2497
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->RESUMED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 2498
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->PAUSED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 2499
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v7}, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->STOPPED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 2500
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    const-string v1, "DESTROYED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->DESTROYED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 2494
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->UNKNOWN:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->CREATED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->RESUMED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->PAUSED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->STOPPED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->DESTROYED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->$VALUES:[Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

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
    .line 2494
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;
    .locals 1
    .parameter "name"

    .prologue
    .line 2494
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;
    .locals 1

    .prologue
    .line 2494
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->$VALUES:[Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    return-object v0
.end method
