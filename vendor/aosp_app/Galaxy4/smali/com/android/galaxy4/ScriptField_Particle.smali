.class public Lcom/android/galaxy4/ScriptField_Particle;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Particle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/galaxy4/ScriptField_Particle$Item;
    }
.end annotation


# static fields
.field private static mElementCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/renderscript/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/galaxy4/ScriptField_Particle;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 54
    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 55
    invoke-static {p1}, Lcom/android/galaxy4/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 60
    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 61
    invoke-static {p1}, Lcom/android/galaxy4/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 67
    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 68
    invoke-static {p1}, Lcom/android/galaxy4/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 70
    return-void
.end method

.method private copyToArray(Lcom/android/galaxy4/ScriptField_Particle$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x14

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 120
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/galaxy4/ScriptField_Particle;->copyToArrayLocal(Lcom/android/galaxy4/ScriptField_Particle$Item;Landroid/renderscript/FieldPacker;)V

    .line 121
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/galaxy4/ScriptField_Particle$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 112
    iget-object v0, p1, Lcom/android/galaxy4/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 113
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 114
    iget v0, p1, Lcom/android/galaxy4/ScriptField_Particle$Item;->pointSize:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 115
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/galaxy4/ScriptField_Particle;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/galaxy4/ScriptField_Particle;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/galaxy4/ScriptField_Particle;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/galaxy4/ScriptField_Particle;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 73
    new-instance v0, Lcom/android/galaxy4/ScriptField_Particle;

    invoke-direct {v0, p0}, Lcom/android/galaxy4/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;)V

    .line 74
    .local v0, obj:Lcom/android/galaxy4/ScriptField_Particle;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 75
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/galaxy4/ScriptField_Particle;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/galaxy4/ScriptField_Particle;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/galaxy4/ScriptField_Particle;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/galaxy4/ScriptField_Particle;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 87
    new-instance v1, Lcom/android/galaxy4/ScriptField_Particle;

    invoke-direct {v1, p0}, Lcom/android/galaxy4/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;)V

    .line 88
    .local v1, obj:Lcom/android/galaxy4/ScriptField_Particle;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 89
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 90
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 92
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 93
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/galaxy4/ScriptField_Particle;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 102
    new-instance v0, Lcom/android/galaxy4/ScriptField_Particle;

    invoke-direct {v0, p0}, Lcom/android/galaxy4/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;)V

    .line 103
    .local v0, obj:Lcom/android/galaxy4/ScriptField_Particle;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 104
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 105
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 108
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 46
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 47
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "pointSize"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/galaxy4/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 98
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 181
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/galaxy4/ScriptField_Particle;->copyToArray(Lcom/android/galaxy4/ScriptField_Particle$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/galaxy4/ScriptField_Particle$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_pointSize(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/galaxy4/ScriptField_Particle$Item;->pointSize:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_position(I)Landroid/renderscript/Float3;
    .locals 1
    .parameter "index"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 172
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/galaxy4/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    array-length v2, v3

    .line 188
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 189
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 197
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 191
    .local v1, ni:[Lcom/android/galaxy4/ScriptField_Particle$Item;
    iget-object v3, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iput-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 195
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/galaxy4/ScriptField_Particle$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 196
    iget-object v3, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/galaxy4/ScriptField_Particle$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/galaxy4/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aput-object p1, v1, p2

    .line 126
    if-eqz p3, :cond_1

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/galaxy4/ScriptField_Particle;->copyToArray(Lcom/android/galaxy4/ScriptField_Particle$Item;I)V

    .line 128
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 129
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/galaxy4/ScriptField_Particle;->copyToArrayLocal(Lcom/android/galaxy4/ScriptField_Particle$Item;Landroid/renderscript/FieldPacker;)V

    .line 130
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_pointSize(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/galaxy4/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/galaxy4/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/galaxy4/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/galaxy4/ScriptField_Particle$Item;->pointSize:F

    .line 160
    if-eqz p3, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x14

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 162
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 163
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 164
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 165
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_position(ILandroid/renderscript/Float3;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/galaxy4/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/galaxy4/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/galaxy4/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mItemArray:[Lcom/android/galaxy4/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/galaxy4/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;

    .line 145
    if-eqz p3, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x14

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 147
    iget-object v1, p0, Lcom/android/galaxy4/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 148
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 149
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 150
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
