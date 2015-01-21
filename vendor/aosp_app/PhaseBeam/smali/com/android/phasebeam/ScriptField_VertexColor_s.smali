.class public Lcom/android/phasebeam/ScriptField_VertexColor_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VertexColor_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
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

.field private mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 60
    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 61
    invoke-static {p1}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 66
    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 67
    invoke-static {p1}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 73
    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 74
    invoke-static {p1}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 76
    return-void
.end method

.method private copyToArray(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x30

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x30

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 128
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->copyToArrayLocal(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 129
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 118
    iget-object v0, p1, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 119
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 120
    iget v0, p1, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->offsetX:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 121
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 122
    iget-object v0, p1, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 123
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/phasebeam/ScriptField_VertexColor_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/phasebeam/ScriptField_VertexColor_s;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/phasebeam/ScriptField_VertexColor_s;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 79
    new-instance v0, Lcom/android/phasebeam/ScriptField_VertexColor_s;

    invoke-direct {v0, p0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 80
    .local v0, obj:Lcom/android/phasebeam/ScriptField_VertexColor_s;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 81
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/phasebeam/ScriptField_VertexColor_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/phasebeam/ScriptField_VertexColor_s;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/phasebeam/ScriptField_VertexColor_s;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 93
    new-instance v1, Lcom/android/phasebeam/ScriptField_VertexColor_s;

    invoke-direct {v1, p0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 94
    .local v1, obj:Lcom/android/phasebeam/ScriptField_VertexColor_s;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 95
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 96
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 98
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 99
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/phasebeam/ScriptField_VertexColor_s;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 108
    new-instance v0, Lcom/android/phasebeam/ScriptField_VertexColor_s;

    invoke-direct {v0, p0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 109
    .local v0, obj:Lcom/android/phasebeam/ScriptField_VertexColor_s;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 110
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 111
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 114
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 48
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 49
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 50
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "offsetX"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 51
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 52
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_2"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 53
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#rs_padding_3"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 54
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 55
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 104
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 209
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->copyToArray(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_color(I)Landroid/renderscript/Float4;
    .locals 1
    .parameter "index"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_offsetX(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 200
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->offsetX:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_position(I)Landroid/renderscript/Float3;
    .locals 1
    .parameter "index"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    array-length v2, v3

    .line 216
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 217
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 225
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 219
    .local v1, ni:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    iget-object v3, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 223
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 224
    iget-object v3, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aput-object p1, v1, p2

    .line 134
    if-eqz p3, :cond_1

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->copyToArray(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;I)V

    .line 136
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 137
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->copyToArrayLocal(Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 138
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_color(ILandroid/renderscript/Float4;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    .line 183
    if-eqz p3, :cond_3

    .line 184
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 185
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 186
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 187
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 188
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_offsetX(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->offsetX:F

    .line 168
    if-eqz p3, :cond_3

    .line 169
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 170
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 171
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 172
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 173
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 164
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
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/phasebeam/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    .line 153
    if-eqz p3, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x30

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 155
    iget-object v1, p0, Lcom/android/phasebeam/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 156
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 157
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 158
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
