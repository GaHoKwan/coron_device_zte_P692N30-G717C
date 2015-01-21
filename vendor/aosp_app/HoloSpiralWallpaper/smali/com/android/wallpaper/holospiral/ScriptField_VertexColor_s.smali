.class public Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VertexColor_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
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

.field private mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 55
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 56
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 61
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 62
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 68
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 69
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 71
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x20

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 121
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyToArrayLocal(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 122
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 113
    iget-object v0, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 115
    iget-object v0, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 116
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 74
    new-instance v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 75
    .local v0, obj:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 76
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 88
    new-instance v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 89
    .local v1, obj:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 90
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 91
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 93
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 94
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 103
    new-instance v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 104
    .local v0, obj:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 105
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 106
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 109
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
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 99
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_color(I)Landroid/renderscript/Float4;
    .locals 1
    .parameter "index"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 178
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_position(I)Landroid/renderscript/Float3;
    .locals 1
    .parameter "index"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    array-length v2, v3

    .line 189
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 190
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 198
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 192
    .local v1, ni:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 196
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 197
    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aput-object p1, v1, p2

    .line 127
    if-eqz p3, :cond_1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;I)V

    .line 129
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 130
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyToArrayLocal(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 131
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 125
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
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    .line 161
    if-eqz p3, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x20

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 163
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 164
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 165
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 166
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 157
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
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    .line 146
    if-eqz p3, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x20

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 148
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 149
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 150
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 151
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
