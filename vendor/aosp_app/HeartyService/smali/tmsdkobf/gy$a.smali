.class abstract Ltmsdkobf/gy$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

.field private mParams:[Ljava/lang/Object;

.field private mState:I

.field private oG:Ltmsdk/common/module/aresengine/FilterResult;

.field private oH:I

.field private oI:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ltmsdkobf/gy$a;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Ltmsdkobf/gy$a;->mState:I

    return p1
.end method

.method static synthetic a(Ltmsdkobf/gy$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Ltmsdkobf/gy$a;->oI:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Ltmsdkobf/gy$a;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Ltmsdkobf/gy$a;->oG:Ltmsdk/common/module/aresengine/FilterResult;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/TelephonyEntity;)Ltmsdk/common/module/aresengine/TelephonyEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Ltmsdkobf/gy$a;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    return-object p1
.end method

.method static synthetic a(Ltmsdkobf/gy$a;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Ltmsdkobf/gy$a;->mParams:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Ltmsdkobf/gy$a;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Ltmsdkobf/gy$a;->oH:I

    return p1
.end method


# virtual methods
.method public a(Ltmsdk/common/module/aresengine/FilterResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 145
    iput-object p1, p0, Ltmsdkobf/gy$a;->oG:Ltmsdk/common/module/aresengine/FilterResult;

    .line 146
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 141
    iput-object p1, p0, Ltmsdkobf/gy$a;->oI:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public bT()Ltmsdk/common/module/aresengine/TelephonyEntity;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltmsdkobf/gy$a;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    return-object v0
.end method

.method public bU()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ltmsdkobf/gy$a;->mState:I

    return v0
.end method

.method public bV()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ltmsdkobf/gy$a;->mParams:[Ljava/lang/Object;

    return-object v0
.end method

.method public bW()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Ltmsdkobf/gy$a;->oH:I

    return v0
.end method

.method public bX()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ltmsdkobf/gy$a;->oI:Ljava/lang/Object;

    return-object v0
.end method

.method abstract bY()Z
.end method

.method abstract bZ()V
.end method
