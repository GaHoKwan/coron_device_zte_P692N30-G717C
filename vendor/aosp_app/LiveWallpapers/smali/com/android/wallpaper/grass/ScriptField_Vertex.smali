.class public Lcom/android/wallpaper/grass/ScriptField_Vertex;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Vertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
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

.field private mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 58
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 59
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 64
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 65
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 71
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 72
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 74
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x14

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 124
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;Landroid/renderscript/FieldPacker;)V

    .line 125
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 116
    iget-object v0, p1, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->color:Landroid/renderscript/Short4;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    .line 117
    iget-object v0, p1, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->position:Landroid/renderscript/Float2;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 118
    iget-object v0, p1, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->texture0:Landroid/renderscript/Float2;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 119
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/wallpaper/grass/ScriptField_Vertex;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/grass/ScriptField_Vertex;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/grass/ScriptField_Vertex;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 77
    new-instance v0, Lcom/android/wallpaper/grass/ScriptField_Vertex;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;)V

    .line 78
    .local v0, obj:Lcom/android/wallpaper/grass/ScriptField_Vertex;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 79
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/grass/ScriptField_Vertex;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/grass/ScriptField_Vertex;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/grass/ScriptField_Vertex;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 91
    new-instance v1, Lcom/android/wallpaper/grass/ScriptField_Vertex;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;)V

    .line 92
    .local v1, obj:Lcom/android/wallpaper/grass/ScriptField_Vertex;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 93
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 94
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 96
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 97
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/wallpaper/grass/ScriptField_Vertex;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 106
    new-instance v0, Lcom/android/wallpaper/grass/ScriptField_Vertex;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;)V

    .line 107
    .local v0, obj:Lcom/android/wallpaper/grass/ScriptField_Vertex;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 108
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 109
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 112
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 49
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 50
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 51
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 52
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "texture0"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 102
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 205
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->copyToArray(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_color(I)Landroid/renderscript/Short4;
    .locals 1
    .parameter "index"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->color:Landroid/renderscript/Short4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_position(I)Landroid/renderscript/Float2;
    .locals 1
    .parameter "index"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 196
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->position:Landroid/renderscript/Float2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_texture0(I)Landroid/renderscript/Float2;
    .locals 1
    .parameter "index"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->texture0:Landroid/renderscript/Float2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    array-length v2, v3

    .line 212
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 213
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 221
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 214
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 215
    .local v1, ni:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 219
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 220
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aput-object p1, v1, p2

    .line 130
    if-eqz p3, :cond_1

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->copyToArray(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;I)V

    .line 132
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 133
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Vertex;->copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;Landroid/renderscript/FieldPacker;)V

    .line 134
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_color(ILandroid/renderscript/Short4;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;-><init>()V

    aput-object v2, v1, p1

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->color:Landroid/renderscript/Short4;

    .line 149
    if-eqz p3, :cond_3

    .line 150
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x14

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 151
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    .line 152
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 153
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    .line 154
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_position(ILandroid/renderscript/Float2;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;-><init>()V

    aput-object v2, v1, p1

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->position:Landroid/renderscript/Float2;

    .line 164
    if-eqz p3, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x14

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 166
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 167
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 168
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 169
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_texture0(ILandroid/renderscript/Float2;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;-><init>()V

    aput-object v2, v1, p1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->texture0:Landroid/renderscript/Float2;

    .line 179
    if-eqz p3, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x14

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 181
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 182
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 183
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 184
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
