.class Ltmsdkobf/hp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/hp$a;
    }
.end annotation


# static fields
.field private static final qf:[I

.field private static final qh:[[I

.field private static final qi:[Z


# instance fields
.field private final qg:[Ltmsdkobf/fp;

.field private qj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdkobf/fp;",
            ">;"
        }
    .end annotation
.end field

.field private qk:Ltmsdkobf/hv;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdkobf/hp;->qf:[I

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v3, v8, [I

    sget v4, Ltmsdkobf/gd$a;->ms:I

    aput v4, v3, v2

    sget v4, Ltmsdkobf/gd$a;->mt:I

    aput v4, v3, v1

    sget v4, Ltmsdkobf/gd$a;->mu:I

    aput v4, v3, v6

    sget v4, Ltmsdkobf/gd$a;->mv:I

    aput v4, v3, v7

    aput-object v3, v0, v2

    const/16 v3, 0x8

    new-array v3, v3, [I

    sget v4, Ltmsdkobf/gd$b;->mw:I

    aput v4, v3, v2

    sget v4, Ltmsdkobf/gd$b;->mx:I

    aput v4, v3, v1

    sget v4, Ltmsdkobf/gd$b;->my:I

    aput v4, v3, v6

    sget v4, Ltmsdkobf/gd$b;->mz:I

    aput v4, v3, v7

    sget v4, Ltmsdkobf/gd$b;->mA:I

    aput v4, v3, v8

    const/4 v4, 0x5

    sget v5, Ltmsdkobf/gd$b;->mB:I

    aput v5, v3, v4

    const/4 v4, 0x6

    sget v5, Ltmsdkobf/gd$b;->mC:I

    aput v5, v3, v4

    const/4 v4, 0x7

    sget v5, Ltmsdkobf/gd$b;->mD:I

    aput v5, v3, v4

    aput-object v3, v0, v1

    new-array v3, v1, [I

    sget v4, Ltmsdkobf/gd$c;->mE:I

    aput v4, v3, v2

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [I

    sget v4, Ltmsdkobf/gd$d;->mF:I

    aput v4, v3, v2

    sget v4, Ltmsdkobf/gd$d;->dial:I

    aput v4, v3, v1

    sget v4, Ltmsdkobf/gd$d;->mG:I

    aput v4, v3, v6

    sget v4, Ltmsdkobf/gd$d;->mH:I

    aput v4, v3, v7

    sget v4, Ltmsdkobf/gd$d;->mI:I

    aput v4, v3, v8

    aput-object v3, v0, v7

    new-array v3, v8, [I

    sget v4, Ltmsdkobf/gd$e;->mJ:I

    aput v4, v3, v2

    sget v4, Ltmsdkobf/gd$e;->mL:I

    aput v4, v3, v1

    sget v4, Ltmsdkobf/gd$e;->mM:I

    aput v4, v3, v6

    sget v4, Ltmsdkobf/gd$e;->mK:I

    aput v4, v3, v7

    aput-object v3, v0, v8

    const/4 v3, 0x5

    new-array v4, v8, [I

    sget v5, Ltmsdkobf/gd$f;->mN:I

    aput v5, v4, v2

    sget v5, Ltmsdkobf/gd$f;->mO:I

    aput v5, v4, v1

    sget v5, Ltmsdkobf/gd$f;->sendText:I

    aput v5, v4, v6

    sget v5, Ltmsdkobf/gd$f;->mP:I

    aput v5, v4, v7

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v1, [I

    sget v5, Ltmsdkobf/gd$g;->mR:I

    aput v5, v4, v2

    aput-object v4, v0, v3

    sput-object v0, Ltmsdkobf/hp;->qh:[[I

    .line 75
    const/4 v0, 0x7

    new-array v3, v0, [Z

    sget-object v0, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    sget-object v0, Ltmsdkobf/gd$b;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v1

    sget-object v0, Ltmsdkobf/gd$c;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, v6

    sget-object v0, Ltmsdkobf/gd$d;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    aput-boolean v0, v3, v7

    sget-object v0, Ltmsdkobf/gd$e;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    aput-boolean v0, v3, v8

    const/4 v4, 0x5

    sget-object v0, Ltmsdkobf/gd$f;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    aput-boolean v0, v3, v4

    const/4 v0, 0x6

    sget-object v4, Ltmsdkobf/gd$g;->DESCRIPTOR:Ljava/lang/String;

    if-eqz v4, :cond_6

    :goto_6
    aput-boolean v1, v3, v0

    sput-object v3, Ltmsdkobf/hp;->qi:[Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6

    .line 30
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ltmsdkobf/hv;)V
    .locals 4
    .parameter "admin"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Ltmsdkobf/hp;->qk:Ltmsdkobf/hv;

    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Ltmsdkobf/fp;

    const/4 v1, 0x0

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/ho;

    invoke-direct {v3, p1}, Ltmsdkobf/ho;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/hr;

    invoke-direct {v3, p1}, Ltmsdkobf/hr;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/ht;

    invoke-direct {v3, p1}, Ltmsdkobf/ht;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/hw;

    invoke-direct {v3, p1}, Ltmsdkobf/hw;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/hx;

    invoke-direct {v3, p1}, Ltmsdkobf/hx;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/hz;

    invoke-direct {v3, p1}, Ltmsdkobf/hz;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ltmsdkobf/hp$a;

    new-instance v3, Ltmsdkobf/ia;

    invoke-direct {v3, p1}, Ltmsdkobf/ia;-><init>(Ltmsdkobf/hv;)V

    invoke-direct {v2, v3}, Ltmsdkobf/hp$a;-><init>(Ltmsdkobf/hq;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Ltmsdkobf/hp;->qg:[Ltmsdkobf/fp;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/hp;->qj:Landroid/util/SparseArray;

    .line 103
    return-void
.end method


# virtual methods
.method cj()V
    .locals 9

    .prologue
    .line 106
    iget-object v8, p0, Ltmsdkobf/hp;->qk:Ltmsdkobf/hv;

    iget-object v6, v8, Ltmsdkobf/hv;->qv:Ltmsdkobf/fr;

    .line 108
    .local v6, pbm:Ltmsdkobf/fr;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v8, Ltmsdkobf/hp;->qf:[I

    array-length v8, v8

    if-ge v2, v8, :cond_3

    .line 110
    sget-object v8, Ltmsdkobf/hp;->qi:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_1

    .line 108
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    sget-object v8, Ltmsdkobf/hp;->qf:[I

    aget v7, v8, v2

    .line 116
    .local v7, serviceId:I
    iget-object v8, p0, Ltmsdkobf/hp;->qg:[Ltmsdkobf/fp;

    aget-object v1, v8, v2

    .line 117
    .local v1, callback:Ltmsdkobf/fp;
    iget-object v8, p0, Ltmsdkobf/hp;->qj:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 118
    sget-object v8, Ltmsdkobf/hp;->qh:[[I

    aget-object v0, v8, v2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 120
    .local v5, methodId:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    .line 118
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v6, v7, v5, v1}, Ltmsdkobf/fr;->a(IILtmsdkobf/fp;)V

    goto :goto_2

    .line 126
    .end local v0           #arr$:[I
    .end local v1           #callback:Ltmsdkobf/fp;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #methodId:I
    .end local v7           #serviceId:I
    :cond_3
    return-void
.end method
