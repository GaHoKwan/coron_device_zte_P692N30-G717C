.class public final Ltmsdkobf/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic N:Z

.field private static fr:[Ltmsdkobf/bk;

.field public static final fs:Ltmsdkobf/bk;


# instance fields
.field private aW:I

.field private aX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Ltmsdkobf/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bk;->N:Z

    .line 11
    new-array v0, v1, [Ltmsdkobf/bk;

    sput-object v0, Ltmsdkobf/bk;->fr:[Ltmsdkobf/bk;

    .line 16
    new-instance v0, Ltmsdkobf/bk;

    const-string v1, "SYSTEM_SCAN"

    invoke-direct {v0, v2, v2, v1}, Ltmsdkobf/bk;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bk;->fs:Ltmsdkobf/bk;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "val"
    .parameter "s"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/bk;->aX:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Ltmsdkobf/bk;->aX:Ljava/lang/String;

    .line 57
    iput p2, p0, Ltmsdkobf/bk;->aW:I

    .line 58
    sget-object v0, Ltmsdkobf/bk;->fr:[Ltmsdkobf/bk;

    aput-object p0, v0, p1

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdkobf/bk;->aX:Ljava/lang/String;

    return-object v0
.end method
