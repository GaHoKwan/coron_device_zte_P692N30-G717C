.class public Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VertexShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
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

.field private mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 56
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 57
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 62
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 63
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 69
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 70
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 72
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x48

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x48

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 122
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->copyToArrayLocal(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 123
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 114
    iget-object v0, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 115
    iget v0, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->maxPointSize:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 116
    iget v0, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->farPlane:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 117
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 75
    new-instance v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 76
    .local v0, obj:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 77
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 89
    new-instance v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 90
    .local v1, obj:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 91
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 92
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 94
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 95
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 104
    new-instance v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 105
    .local v0, obj:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 106
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 107
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 110
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 47
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 48
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "modelViewProj"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "maxPointSize"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 50
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "farPlane"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 100
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 203
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_farPlane(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 199
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->farPlane:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_maxPointSize(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 194
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->maxPointSize:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_modelViewProj(I)Landroid/renderscript/Matrix4f;
    .locals 1
    .parameter "index"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 189
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    array-length v2, v3

    .line 210
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 211
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 219
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 213
    .local v1, ni:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 217
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 218
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x48

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aput-object p1, v1, p2

    .line 128
    if-eqz p3, :cond_1

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;I)V

    .line 130
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 131
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->copyToArrayLocal(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 132
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_farPlane(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x48

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->farPlane:F

    .line 177
    if-eqz p3, :cond_3

    .line 178
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x48

    add-int/lit8 v2, v2, 0x44

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 179
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 180
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 181
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 182
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_maxPointSize(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x48

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->maxPointSize:F

    .line 162
    if-eqz p3, :cond_3

    .line 163
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x48

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 164
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 165
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 166
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 167
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_modelViewProj(ILandroid/renderscript/Matrix4f;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x48

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    .line 147
    if-eqz p3, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x48

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 149
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 150
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 151
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 152
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
