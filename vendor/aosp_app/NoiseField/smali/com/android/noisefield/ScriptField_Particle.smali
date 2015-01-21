.class public Lcom/android/noisefield/ScriptField_Particle;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Particle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/noisefield/ScriptField_Particle$Item;
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

.field private mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/noisefield/ScriptField_Particle;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 66
    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 67
    invoke-static {p1}, Lcom/android/noisefield/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 72
    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 73
    invoke-static {p1}, Lcom/android/noisefield/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 79
    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 80
    invoke-static {p1}, Lcom/android/noisefield/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 82
    return-void
.end method

.method private copyToArray(Lcom/android/noisefield/ScriptField_Particle$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x30

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x30

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 138
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/noisefield/ScriptField_Particle;->copyToArrayLocal(Lcom/android/noisefield/ScriptField_Particle$Item;Landroid/renderscript/FieldPacker;)V

    .line 139
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/noisefield/ScriptField_Particle$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 124
    iget-object v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 125
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 126
    iget v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->speed:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 127
    iget v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->wander:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 128
    iget v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->alphaStart:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 129
    iget v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->alpha:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 130
    iget v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->life:I

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 131
    iget v0, p1, Lcom/android/noisefield/ScriptField_Particle$Item;->death:I

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 133
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/noisefield/ScriptField_Particle;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/noisefield/ScriptField_Particle;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/noisefield/ScriptField_Particle;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/noisefield/ScriptField_Particle;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 85
    new-instance v0, Lcom/android/noisefield/ScriptField_Particle;

    invoke-direct {v0, p0}, Lcom/android/noisefield/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;)V

    .line 86
    .local v0, obj:Lcom/android/noisefield/ScriptField_Particle;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 87
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/noisefield/ScriptField_Particle;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/noisefield/ScriptField_Particle;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/noisefield/ScriptField_Particle;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/noisefield/ScriptField_Particle;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 99
    new-instance v1, Lcom/android/noisefield/ScriptField_Particle;

    invoke-direct {v1, p0}, Lcom/android/noisefield/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;)V

    .line 100
    .local v1, obj:Lcom/android/noisefield/ScriptField_Particle;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 101
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 102
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 104
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 105
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/noisefield/ScriptField_Particle;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 114
    new-instance v0, Lcom/android/noisefield/ScriptField_Particle;

    invoke-direct {v0, p0}, Lcom/android/noisefield/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;)V

    .line 115
    .local v0, obj:Lcom/android/noisefield/ScriptField_Particle;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 116
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 117
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 120
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 51
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 52
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 53
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "speed"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 54
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "wander"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "alphaStart"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "alpha"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "life"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "death"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_2"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/noisefield/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 110
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 299
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/noisefield/ScriptField_Particle;->copyToArray(Lcom/android/noisefield/ScriptField_Particle$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/noisefield/ScriptField_Particle$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_alpha(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->alpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_alphaStart(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 280
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->alphaStart:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_death(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 295
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->death:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_life(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->life:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_position(I)Landroid/renderscript/Float3;
    .locals 1
    .parameter "index"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 265
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_speed(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 270
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->speed:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_wander(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 275
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/noisefield/ScriptField_Particle$Item;->wander:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-eqz v3, :cond_2

    .line 305
    iget-object v3, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    array-length v2, v3

    .line 306
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 307
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 315
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 309
    .local v1, ni:[Lcom/android/noisefield/ScriptField_Particle$Item;
    iget-object v3, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 313
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/noisefield/ScriptField_Particle$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 314
    iget-object v3, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/noisefield/ScriptField_Particle$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aput-object p1, v1, p2

    .line 144
    if-eqz p3, :cond_1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/noisefield/ScriptField_Particle;->copyToArray(Lcom/android/noisefield/ScriptField_Particle$Item;I)V

    .line 146
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 147
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/noisefield/ScriptField_Particle;->copyToArrayLocal(Lcom/android/noisefield/ScriptField_Particle$Item;Landroid/renderscript/FieldPacker;)V

    .line 148
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_alpha(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->alpha:F

    .line 223
    if-eqz p3, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 225
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 226
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 227
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 228
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_alphaStart(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->alphaStart:F

    .line 208
    if-eqz p3, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 210
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 211
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 212
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 213
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_death(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->death:I

    .line 253
    if-eqz p3, :cond_3

    .line 254
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x24

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 255
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 256
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 257
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 258
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_life(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->life:I

    .line 238
    if-eqz p3, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 240
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 241
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 242
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 243
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 234
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
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;

    .line 163
    if-eqz p3, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 165
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 166
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 167
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 168
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_speed(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->speed:F

    .line 178
    if-eqz p3, :cond_3

    .line 179
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 180
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 181
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 182
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 183
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_wander(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/noisefield/ScriptField_Particle$Item;

    iput-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    new-instance v2, Lcom/android/noisefield/ScriptField_Particle$Item;

    invoke-direct {v2}, Lcom/android/noisefield/ScriptField_Particle$Item;-><init>()V

    aput-object v2, v1, p1

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mItemArray:[Lcom/android/noisefield/ScriptField_Particle$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/noisefield/ScriptField_Particle$Item;->wander:F

    .line 193
    if-eqz p3, :cond_3

    .line 194
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 195
    iget-object v1, p0, Lcom/android/noisefield/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 196
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 197
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 198
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
