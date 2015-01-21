.class public Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VpConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
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

.field private mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mElementCache:Ljava/lang/ref/WeakReference;

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
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 55
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 56
    invoke-static {p1}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

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
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 61
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 62
    invoke-static {p1}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

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
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 68
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 69
    invoke-static {p1}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 71
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v1, p2, 0x80

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 120
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArrayLocal(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;Landroid/renderscript/FieldPacker;)V

    .line 121
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 113
    iget-object v0, p1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 114
    iget-object v0, p1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 115
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 74
    new-instance v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;)V

    .line 75
    .local v0, obj:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 76
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 88
    new-instance v1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;)V

    .line 89
    .local v1, obj:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
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

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 103
    new-instance v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;)V

    .line 104
    .local v0, obj:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
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
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Proj"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "MVP"

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
    invoke-static {p0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

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
    .line 181
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArray(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

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

.method public declared-synchronized get(I)Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
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
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

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

.method public declared-synchronized get_MVP(I)Landroid/renderscript/Matrix4f;
    .locals 1
    .parameter "index"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_Proj(I)Landroid/renderscript/Matrix4f;
    .locals 1
    .parameter "index"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
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
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;
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
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

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
    new-array v1, p1, [Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 191
    .local v1, ni:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 195
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 196
    iget-object v3, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0x80

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aput-object p1, v1, p2

    .line 126
    if-eqz p3, :cond_1

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArray(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;I)V

    .line 128
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 129
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArrayLocal(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;Landroid/renderscript/FieldPacker;)V

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

.method public declared-synchronized set_MVP(ILandroid/renderscript/Matrix4f;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    new-instance v2, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;-><init>()V

    aput-object v2, v1, p1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 160
    if-eqz p3, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0x80

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 162
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 163
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 164
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

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

.method public declared-synchronized set_Proj(ILandroid/renderscript/Matrix4f;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    new-instance v2, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;-><init>()V

    aput-object v2, v1, p1

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    .line 145
    if-eqz p3, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0x80

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 147
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 148
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 149
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

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
