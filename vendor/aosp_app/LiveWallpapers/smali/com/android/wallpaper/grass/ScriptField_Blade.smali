.class public Lcom/android/wallpaper/grass/ScriptField_Blade;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Blade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
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

.field private mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 75
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 76
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Blade;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 81
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 82
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Blade;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 88
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 89
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Blade;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Script$FieldBase;->init(Landroid/renderscript/RenderScript;II)V

    .line 91
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x34

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x34

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 151
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;Landroid/renderscript/FieldPacker;)V

    .line 152
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 133
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->angle:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 134
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 135
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->xPos:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 136
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->yPos:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 137
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->offset:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 138
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->scale:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 139
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthX:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 140
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthY:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 141
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->hardness:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 142
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->h:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 143
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->s:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 144
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->b:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 145
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->turbulencex:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 146
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/wallpaper/grass/ScriptField_Blade;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/grass/ScriptField_Blade;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/grass/ScriptField_Blade;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 94
    new-instance v0, Lcom/android/wallpaper/grass/ScriptField_Blade;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/grass/ScriptField_Blade;-><init>(Landroid/renderscript/RenderScript;)V

    .line 95
    .local v0, obj:Lcom/android/wallpaper/grass/ScriptField_Blade;
    iget-object v1, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 96
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/wallpaper/grass/ScriptField_Blade;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/grass/ScriptField_Blade;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/wallpaper/grass/ScriptField_Blade;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 108
    new-instance v1, Lcom/android/wallpaper/grass/ScriptField_Blade;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/grass/ScriptField_Blade;-><init>(Landroid/renderscript/RenderScript;)V

    .line 109
    .local v1, obj:Lcom/android/wallpaper/grass/ScriptField_Blade;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 110
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 111
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 113
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 114
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/wallpaper/grass/ScriptField_Blade;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 123
    new-instance v0, Lcom/android/wallpaper/grass/ScriptField_Blade;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/grass/ScriptField_Blade;-><init>(Landroid/renderscript/RenderScript;)V

    .line 124
    .local v0, obj:Lcom/android/wallpaper/grass/ScriptField_Blade;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 125
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 126
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 129
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 56
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 57
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "angle"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "xPos"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "yPos"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 61
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 62
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 63
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "lengthX"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 64
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "lengthY"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 65
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "hardness"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 66
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 67
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 68
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 69
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "turbulencex"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 119
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 432
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArray(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_angle(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 368
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->angle:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_b(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 423
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->b:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_h(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 413
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->h:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_hardness(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->hardness:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_lengthX(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 398
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthX:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_lengthY(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 403
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_offset(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 388
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->offset:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_s(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->s:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_scale(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->scale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_size(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 373
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_turbulencex(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 428
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->turbulencex:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_xPos(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 378
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->xPos:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_yPos(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 383
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->yPos:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    array-length v2, v3

    .line 439
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 440
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 448
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 442
    .local v1, ni:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 446
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 447
    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x34

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aput-object p1, v1, p2

    .line 157
    if-eqz p3, :cond_1

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArray(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;I)V

    .line 159
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 160
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;Landroid/renderscript/FieldPacker;)V

    .line 161
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_angle(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->angle:F

    .line 176
    if-eqz p3, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 178
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 179
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 180
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 181
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_b(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->b:F

    .line 341
    if-eqz p3, :cond_3

    .line 342
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 343
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 344
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 345
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 346
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_h(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->h:F

    .line 311
    if-eqz p3, :cond_3

    .line 312
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x24

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 313
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 314
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 315
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 316
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_hardness(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->hardness:F

    .line 296
    if-eqz p3, :cond_3

    .line 297
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 298
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 299
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 300
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 301
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_lengthX(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthX:F

    .line 266
    if-eqz p3, :cond_3

    .line 267
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 268
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 269
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 270
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 271
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_lengthY(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthY:F

    .line 281
    if-eqz p3, :cond_3

    .line 282
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 283
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 284
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 285
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 286
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_offset(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->offset:F

    .line 236
    if-eqz p3, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 238
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 239
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 240
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 241
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_s(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->s:F

    .line 326
    if-eqz p3, :cond_3

    .line 327
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 328
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 329
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 330
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 331
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_scale(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->scale:F

    .line 251
    if-eqz p3, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 253
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 254
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 255
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 256
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_size(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    .line 191
    if-eqz p3, :cond_3

    .line 192
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 193
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 194
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 195
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 196
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_turbulencex(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->turbulencex:F

    .line 356
    if-eqz p3, :cond_3

    .line 357
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 358
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 359
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 360
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 361
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_xPos(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->xPos:F

    .line 206
    if-eqz p3, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 208
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 209
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 210
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 211
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_yPos(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    new-instance v2, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;-><init>()V

    aput-object v2, v1, p1

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->yPos:F

    .line 221
    if-eqz p3, :cond_3

    .line 222
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x34

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 223
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 224
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 225
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 226
    iget-object v1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
